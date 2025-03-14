import 'package:edu_admin/core/utils/safe_request.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/error/failure.dart';
import '../models/fee_type_model.dart';

abstract class FeeTypeDataSource {
  Future<Either<Failure, void>> createFeeType(FeeTypeModel feeType);

  Future<Either<Failure, void>> updateFeeType(FeeTypeModel feeType);

  Future<Either<Failure, void>> deleteFeeType(int feeTypeId);

  Future<Either<Failure, FeeTypeModel>> fetchFeeType(int feeTypeId);

  Future<Either<Failure, List<FeeTypeModel>>> fetchAllFeeTypes();
}

@LazySingleton(as: FeeTypeDataSource)
class FeeTypeDataSourceImpl implements FeeTypeDataSource {
  final SupabaseClient _client;

  FeeTypeDataSourceImpl(this._client);

  @override
  Future<Either<Failure, void>> createFeeType(FeeTypeModel feeType) {
    return safeRequest(() async {
      await _client.from('fee_types').insert(feeType.toJson());
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, void>> deleteFeeType(int feeTypeId) {
    return safeRequest(() async {
      await _client
          .from('fee_types')
          .delete()
          .eq('fee_type_id', feeTypeId);
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, List<FeeTypeModel>>> fetchAllFeeTypes() {
    return safeRequest(() async {
      final result = await _client
          .from('fee_types')
          .select('*')
          .withConverter((data) => data.map(FeeTypeModel.fromJson).toList());
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, FeeTypeModel>> fetchFeeType(int feeTypeId) {
    return safeRequest(() async {
      final result = await _client
          .from('fee_types')
          .select('*')
          .eq('fee_type_id', feeTypeId)
          .limit(1)
          .single()
          .withConverter(FeeTypeModel.fromJson);
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, void>> updateFeeType(FeeTypeModel feeType) {
    return safeRequest(() async {
      await _client
          .from('fee_types')
          .update(feeType.toJson())
          .eq('fee_type_id', '${feeType.feeTypeId}');
      return Right(null);
    });
  }
}
