import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.server(String message) = ServerFailure;
  const factory Failure.network(String message) = NetworkFailure;
  const factory Failure.local(String message) = LocalFailure;
  const factory Failure.unauthorized(String message) = UnauthorizedFailure;
  const factory Failure.validation(String message) = ValidationFailure;
  const factory Failure.unexpected(String message) = UnexpectedFailure;
}