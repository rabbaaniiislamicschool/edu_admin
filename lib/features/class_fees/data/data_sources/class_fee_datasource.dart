import 'package:edu_admin/core/utils/safe_request.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/error/failure.dart';
import '../models/class_fee_model.dart';

abstract class ClassFeeDataSource {
  Future<Either<Failure, void>> createClassFee(ClassFeeModel classFee);

  Future<Either<Failure, void>> updateClassFee(ClassFeeModel classFee);

  Future<Either<Failure, void>> deleteClassFee(int classFeeId);

  Future<Either<Failure, ClassFeeModel>> fetchClassFee(int classFeeId);

  Future<Either<Failure, List<ClassFeeModel>>> fetchAllClassFees();
}

@LazySingleton(as: ClassFeeDataSource)
class ClassFeeDataSourceImpl implements ClassFeeDataSource {
  final SupabaseClient _client;

  ClassFeeDataSourceImpl(this._client);

  @override
  Future<Either<Failure, void>> createClassFee(ClassFeeModel classFee) {
    return safeRequest(() async {
      await _client.from('class_fees').insert(classFee.toJson());
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, void>> deleteClassFee(int classFeeId) {
    return safeRequest(() async {
      await _client
          .from('class_fees')
          .delete()
          .eq('class_fee_id', classFeeId);
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, List<ClassFeeModel>>> fetchAllClassFees() {
    return safeRequest(() async {
      final result = await _client
          .from('class_fees')
          .select('*')
          .withConverter((data) => data.map(ClassFeeModel.fromJson).toList());
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, ClassFeeModel>> fetchClassFee(int classFeeId) {
    return safeRequest(() async {
      final result = await _client
          .from('class_fees')
          .select('*')
          .eq('class_fee_id', classFeeId)
          .limit(1)
          .single()
          .withConverter(ClassFeeModel.fromJson);
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, void>> updateClassFee(ClassFeeModel classFee) {
    return safeRequest(() async {
      await _client
          .from('class_fees')
          .update(classFee.toJson())
          .eq('class_fee_id', '${classFee.classFeeId}');
      return Right(null);
    });
  }
}
