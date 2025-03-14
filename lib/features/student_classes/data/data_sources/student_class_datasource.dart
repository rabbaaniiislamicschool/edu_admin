import 'package:edu_admin/core/utils/safe_request.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/error/failure.dart';
import '../models/student_class_model.dart';

abstract class StudentClassDataSource {
  Future<Either<Failure, void>> createStudentClass(StudentClassModel studentClass);

  Future<Either<Failure, void>> updateStudentClass(StudentClassModel studentClass);

  Future<Either<Failure, void>> deleteStudentClass(int studentClassId);

  Future<Either<Failure, StudentClassModel>> fetchStudentClass(int studentClassId);

  Future<Either<Failure, List<StudentClassModel>>> fetchAllStudentClasss();
}

@LazySingleton(as: StudentClassDataSource)
class StudentClassDataSourceImpl implements StudentClassDataSource {
  final SupabaseClient _client;

  StudentClassDataSourceImpl(this._client);

  @override
  Future<Either<Failure, void>> createStudentClass(StudentClassModel studentClass) {
    return safeRequest(() async {
      await _client.from('studentClasss').insert(studentClass.toJson());
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, void>> deleteStudentClass(int studentClassId) {
    return safeRequest(() async {
      await _client
          .from('studentClasss')
          .delete()
          .eq('studentClass_id', studentClassId);
      return Right(null);
    });
  }

  @override
  Future<Either<Failure, List<StudentClassModel>>> fetchAllStudentClasss() {
    return safeRequest(() async {
      final result = await _client
          .from('studentClasss')
          .select('*')
          .withConverter((data) => data.map(StudentClassModel.fromJson).toList());
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, StudentClassModel>> fetchStudentClass(int studentClassId) {
    return safeRequest(() async {
      final result = await _client
          .from('studentClasss')
          .select('*')
          .eq('studentClass_id', studentClassId)
          .limit(1)
          .single()
          .withConverter(StudentClassModel.fromJson);
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, void>> updateStudentClass(StudentClassModel studentClass) {
    return safeRequest(() async {
      await _client
          .from('studentClasss')
          .update(studentClass.toJson())
          .eq('studentClass_id', '${studentClass.studentClassId}');
      return Right(null);
    });
  }
}
