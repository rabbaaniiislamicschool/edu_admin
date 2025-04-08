import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_event.freezed.dart';

@freezed
abstract class SchoolEvent with _$SchoolEvent {
  const factory SchoolEvent.fetchAllSchools() = FetchSchools;
  const factory SchoolEvent.getSchoolById(int id) = GetSchoolById;
  const factory SchoolEvent.createSchool(School school) = CreateSchool;
  const factory SchoolEvent.createSchools(List<School> schools) = CreateSchools;
  const factory SchoolEvent.deleteSchool(int id) = DeleteSchool;
  const factory SchoolEvent.updateSchool(School school) = UpdateSchool;
}
