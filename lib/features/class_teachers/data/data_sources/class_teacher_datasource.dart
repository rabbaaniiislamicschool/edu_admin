import 'package:edu_admin/core/utils/safe_request.dart';
import 'package:edu_admin/features/schools/data/models/school_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/error/failure.dart';
import '../models/class_teacher_model.dart';

abstract class ClassTeacherDataSource {
  Future<Either<Failure, void>> createClassTeacher(ClassTeacherModel school);

  Future<Either<Failure, void>> updateClassTeacher(ClassTeacherModel school);

  Future<Either<Failure, void>> deleteClassTeacher(int schoolId);

  Future<Either<Failure, ClassTeacherModel>> fetchClassTeacher(int schoolId);

  Future<Either<Failure, List<ClassTeacherModel>>> fetchAllClassTeachers();
}

@LazySingleton(as: ClassTeacherDataSource)
class ClassTeacherDataSourceImpl implements ClassTeacherDataSource {
  final SupabaseClient _client;

  ClassTeacherDataSourceImpl(this._client);

  @override
  Future<Either<Failure, void>> createClassTeacher(ClassTeacherModel classTeacher) {
    return safeRequest(() async {
      await _client.from('class_teachers').insert(classTeacher.toJson());
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, void>> deleteClassTeacher(int classTeacherId) {
    return safeRequest(() async {
      await _client
          .from('class_teachers')
          .delete()
          .eq('class_teacher_id', classTeacherId);
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, List<ClassTeacherModel>>> fetchAllClassTeachers() {
    return safeRequest(() async {
      final result = await _client
          .from('class_teachers')
          .select('*')
          .withConverter((data) => data.map(ClassTeacherModel.fromJson).toList());
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, ClassTeacherModel>> fetchClassTeacher(int classTeacherId) {
    return safeRequest(() async {
      final result = await _client
          .from('class_teachers')
          .select('*')
          .eq('class_teacher_id', classTeacherId)
          .limit(1)
          .single()
          .withConverter(ClassTeacherModel.fromJson);
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, void>> updateClassTeacher(ClassTeacherModel classTeacher) {
    return safeRequest(() async {
      await _client
          .from('class_teachers')
          .update(classTeacher.toJson())
          .eq('class_teacher_id', '${classTeacher.classTeacherId}');
      return Right(null);
    });
  }
}
