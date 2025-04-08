import 'package:edu_admin/features/divisions/domain/entities/division.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'division_event.freezed.dart';

@freezed
abstract class DivisionEvent with _$DivisionEvent {
  const factory DivisionEvent.fetchAllDivisions() = FetchDivisions;
  const factory DivisionEvent.getDivisionById(int id) = GetDivisionById;
  const factory DivisionEvent.createDivision(Division division) =
      CreateDivision;
  const factory DivisionEvent.createDivisions(List<Division> divisions) =
      CreateDivisions;
  const factory DivisionEvent.deleteDivision(int id) = DeleteDivision;
  const factory DivisionEvent.updateDivision(Division division) =
      UpdateDivision;
}
