import 'package:edu_admin/core/utils/safe_request.dart';
import 'package:edu_admin/features/branchs/domain/entities/branch.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../core/error/failure.dart';
import '../models/branch_model.dart';

abstract class BranchDataSource {
  Future<Either<Failure, void>> createBranch(BranchModel branch);

  Future<Either<Failure, void>> createBranches(List<BranchModel> branches);

  Future<Either<Failure, void>> updateBranch(BranchModel branch);

  Future<Either<Failure, void>> deleteBranch(int branchId);

  Future<Either<Failure, BranchModel>> fetchBranch(int branchId);

  Future<Either<Failure, List<BranchModel>>> fetchAllBranchs();
}

@LazySingleton(as: BranchDataSource)
class BranchDataSourceImpl implements BranchDataSource {
  final SupabaseClient _client;

  BranchDataSourceImpl(this._client);

  @override
  Future<Either<Failure, void>> createBranch(BranchModel branch) {
    return safeRequest(() async {
      String? imageUrl = await _uploadBranchImage(branch);
      await _client
          .from('branches')
          .insert(branch.copyWith(imageUrl: imageUrl).toJson());
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, void>> deleteBranch(int branchId) {
    return safeRequest(() async {
      await _client.from('branches').delete().eq('branch_id', branchId);
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, List<BranchModel>>> fetchAllBranchs() {
    return safeRequest(() async {
      final result = await _client
          .from('branches')
          .select('*, foundations(*)')
          .withConverter((data) => data.map(BranchModel.fromJson).toList());
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, BranchModel>> fetchBranch(int branchId) {
    return safeRequest(() async {
      final result = await _client
          .from('branches')
          .select('*, foundations(*)')
          .eq('branch_id', branchId)
          .limit(1)
          .single()
          .withConverter(BranchModel.fromJson);
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, void>> updateBranch(BranchModel branch) {
    return safeRequest(() async {
      String? imageUrl = await _uploadBranchImage(branch, isUpdate: true);
      await _client
          .from('branches')
          .update(branch.copyWith(imageUrl: imageUrl).toJson())
          .eq('branch_id', '${branch.branchId}');
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, void>> createBranches(List<BranchModel> branches) {
    return safeRequest(() async {
      final jsonList = branches.map((model) => model.toJson()).toList();
      await _client.from('branches').insert(jsonList); // Batch insert
      return Right(null);
    });
  }

  Future<String?> _uploadBranchImage(
    BranchModel branch, {
    bool isUpdate = false,
  }) async {
    if (branch.uploadStorage == null) return null;
    final bucket = 'branches';
    final fileName = branch.uploadStorage?.fileName;
    final path = 'images/$fileName';

    if (isUpdate && branch.imageUrl != null) {
      final path =
          branch.imageUrl!.split('/storage/v1/object/public/$bucket/').last;
      await _client.storage.from(bucket).remove([path]);
    }

    await _client.storage
        .from(bucket)
        .uploadBinary(path, branch.uploadStorage!.bytes);
    final publicUrl = _client.storage.from(bucket).getPublicUrl(path);
    return publicUrl;
  }
}
