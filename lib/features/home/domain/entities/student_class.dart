import 'package:edu_admin/features/home/data/remote/models/student_class_model.dart';
import 'package:edu_admin/features/home/domain/entities/class.dart';
import 'package:edu_admin/features/home/domain/entities/student.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_class.freezed.dart';

@freezed
class StudentClass with _$StudentClass {
  const factory StudentClass({
    required int studentClassId,
    required String studentId,
    required int classId,
    required int academicYearId,
    required String status,
    required String createdAt,
    required Student student,
    required Class classes,
  }) = _StudentClass;
}

// extension StudentClassX on StudentClass {
//   StudentClassModel toModel() => StudentClassModel(
//         studentClassId: studentClassId,
//         studentId: studentId,
//         classId: classId,
//         academicYearId: academicYearId,
//         status: status,
//         createdAt: createdAt,
//         student: student,
//         classes: classes,
//       );
// }
