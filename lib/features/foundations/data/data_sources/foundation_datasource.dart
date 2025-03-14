import 'dart:io';

import 'package:edu_admin/core/utils/safe_request.dart';
import 'package:edu_admin/features/foundations/data/models/foundation_model.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../core/error/failure.dart';
import 'package:mime/mime.dart';

abstract class FoundationDataSource {
  Future<Either<Failure, void>> createFoundation(FoundationModel foundation);

  Future<Either<Failure, void>> createFoundations(
    List<FoundationModel> foundations,
  );

  Future<Either<Failure, void>> updateFoundation(FoundationModel foundation);

  Future<Either<Failure, void>> deleteFoundation(String foundationId);

  Future<Either<Failure, FoundationModel>> fetchFoundation(String foundationId);

  Future<Either<Failure, List<FoundationModel>>> fetchAllFoundations();
}

@LazySingleton(as: FoundationDataSource)
class FoundationDataSourceImpl implements FoundationDataSource {
  final SupabaseClient _client;

  FoundationDataSourceImpl(this._client);

  @override
  Future<Either<Failure, void>> createFoundation(FoundationModel foundation) {
    return safeRequest(() async {
      String? imageUrl = await _uploadFoundationImage(foundation);
      await _client
          .from('foundations')
          .insert(foundation.copyWith(imageUrl: imageUrl).toJson());
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, void>> deleteFoundation(String foundationId) {
    return safeRequest(() async {
      await _client
          .from('foundations')
          .delete()
          .eq('foundation_id', foundationId);
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, List<FoundationModel>>> fetchAllFoundations() {
    return safeRequest(() async {
      final result = await _client
          .from('foundations')
          .select('*')
          .withConverter((data) => data.map(FoundationModel.fromJson).toList());
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, FoundationModel>> fetchFoundation(
    String foundationId,
  ) {
    return safeRequest(() async {
      final result = await _client
          .from('foundations')
          .select('*')
          .eq('foundation_id', foundationId)
          .limit(1)
          .single()
          .withConverter(FoundationModel.fromJson);
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, void>> updateFoundation(FoundationModel foundation) {
    return safeRequest(() async {
      String? imageUrl = await _uploadFoundationImage(foundation, isUpdate: true);

      await _client
          .from('foundations')
          .update(foundation.copyWith(imageUrl: imageUrl).toJson())
          .eq('foundation_id', '${foundation.foundationId}');
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, void>> createFoundations(
    List<FoundationModel> foundations,
  ) {
    return safeRequest(() async {
      final jsonList = foundations.map((model) => model.toJson()).toList();
      await _client.from('foundations').insert(jsonList); // Batch insert
      return Right(null);
    });
  }

  Future<String?> _uploadFoundationImage(FoundationModel foundation, {bool isUpdate = false}) async {
    if (foundation.uploadStorage == null) return null;
    final bucket = 'foundations';
    final fileName = foundation.uploadStorage?.fileName;
    final path = 'images/$fileName';

    if(isUpdate && foundation.imageUrl != null){
      final path = foundation.imageUrl!.split('/storage/v1/object/public/$bucket/').last;
      final result = await _client.storage.from(bucket).remove([path]);
    }

    await _client.storage
        .from(bucket)
        .uploadBinary(
          path,
          foundation.uploadStorage!.bytes
        );
    final publicUrl = _client.storage.from(bucket).getPublicUrl(path);
    return publicUrl;
  }
}
