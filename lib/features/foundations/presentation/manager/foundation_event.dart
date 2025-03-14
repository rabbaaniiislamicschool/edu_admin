import 'package:edu_admin/features/foundations/domain/entities/foundation.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'foundation_event.freezed.dart';

@freezed
abstract class FoundationEvent with _$FoundationEvent {
  const factory FoundationEvent.fetchFoundations() = FetchFoundations;
  const factory FoundationEvent.getFoundationById(String id) = GetFoundationById;
  const factory FoundationEvent.createFoundation(Foundation foundation) = CreateFoundation;
  const factory FoundationEvent.createFoundations(List<Foundation> foundations) = CreateFoundations;
  const factory FoundationEvent.deleteFoundation(String id) = DeleteFoundation;
  const factory FoundationEvent.updateFoundation(Foundation foundation) = UpdateFoundation;
}