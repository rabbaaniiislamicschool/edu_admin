import 'package:edu_admin/core/error/failure.dart';
import 'package:edu_admin/features/student_fees/data/models/student_fee_model.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/student_fee.dart';
import '../../domain/repositories/student_fee_repository.dart';
import '../data_sources/student_fee_datasource.dart';

@LazySingleton(as: StudentFeeRepository)
class StudentFeeRepositoryImpl implements StudentFeeRepository {
  final StudentFeeDataSource _dataSource;

  StudentFeeRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, void>> createStudentFee(StudentFee studentFee) {
    return _dataSource.createStudentFee(studentFee.toModel());
  }

  @override
  Future<Either<Failure, void>> deleteStudentFee(int studentFeeId) {
    return _dataSource.deleteStudentFee(studentFeeId);
  }

  @override
  Future<Either<Failure, List<StudentFee>>> getAllStudentFees() async {
    final result = await _dataSource.fetchAllStudentFees();
    return result.map((data) => data.map((model) => model.toEntity()).toList());
  }

  @override
  Future<Either<Failure, StudentFee>> getStudentFee(int studentFeeId) async {
    final result = await _dataSource.fetchStudentFee(studentFeeId);
    return result.map((model) => model.toEntity());
  }

  @override
  Future<Either<Failure, void>> updateStudentFee(StudentFee studentFee) {
    return _dataSource.updateStudentFee(studentFee.toModel());
  }
}
