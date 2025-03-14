import 'package:edu_admin/core/utils/safe_request.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/error/failure.dart';
import '../models/class_model.dart';

abstract class ClassDataSource {
  Future<Either<Failure, void>> createClass(ClassModel _class);

  Future<Either<Failure, void>> updateClass(ClassModel _class);

  Future<Either<Failure, void>> deleteClass(int classId);

  Future<Either<Failure, ClassModel>> fetchClass(int classId);

  Future<Either<Failure, List<ClassModel>>> fetchAllClasss();
}

@LazySingleton(as: ClassDataSource)
class ClassDataSourceImpl implements ClassDataSource {
  final SupabaseClient _client;

  ClassDataSourceImpl(this._client);

  @override
  Future<Either<Failure, void>> createClass(ClassModel _class) {
    return safeRequest(() async {
      await _client.from('classes').insert(_class.toJson());
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, void>> deleteClass(int classId) {
    return safeRequest(() async {
      await _client
          .from('classes')
          .delete()
          .eq('class_id', classId);
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, List<ClassModel>>> fetchAllClasss() {
    return safeRequest(() async {
      final result = await _client
          .from('classes')
          .select('*')
          .withConverter((data) => data.map(ClassModel.fromJson).toList());
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, ClassModel>> fetchClass(int classId) {
    return safeRequest(() async {
      final result = await _client
          .from('classes')
          .select('*')
          .eq('class_id', classId)
          .limit(1)
          .single()
          .withConverter(ClassModel.fromJson);
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, void>> updateClass(ClassModel _class) {
    return safeRequest(() async {
      await _client
          .from('classes')
          .update(_class.toJson())
          .eq('class_id', '${_class.classId}');
      return Right(null);
    });
  }
}
