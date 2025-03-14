// import 'package:edu_admin/core/utils/safe_request.dart';
// import 'package:edu_admin/features/home/data/remote/models/student_class_model.dart';
// import 'package:fpdart/fpdart.dart';
// import 'package:injectable/injectable.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
//
// import '../../../../../core/error/failure.dart';
//
// abstract class StudentClassRemoteDataSource {
//   Future<Either<Failure, StudentClassModel>> fetchStudentClass(
//     String studentId,
//   );
// }
//
// @LazySingleton(as: StudentClassRemoteDataSource)
// class StudentClassRemoteDataSourceImpl implements StudentClassRemoteDataSource {
//   final SupabaseClient client;
//
//   StudentClassRemoteDataSourceImpl(this.client);
//
//   @override
//   Future<Either<Failure, StudentClassModel>> fetchStudentClass(
//     String studentId,
//   ) async {
//     return safeRequest(
//       () async {
//         final response = await client
//             .from('student_classes')
//             .select(
//                 '*, academic_year!inner(), classes(*), students(*, users(*))')
//             .eq('student_id', studentId)
//             .gte('academic_year.end_date_even_semester', 'now()')
//             .lte('academic_year.start_date_odd_semester', 'now()')
//             .withConverter(
//               (model) => model.map(StudentClassModel.fromJson),
//             );
//
//         if (response.isEmpty) {
//           return Left(Failure.server('Data siswa tidak ada'));
//         }
//         return Right(response.first);
//       },
//     );
//   }
// }
