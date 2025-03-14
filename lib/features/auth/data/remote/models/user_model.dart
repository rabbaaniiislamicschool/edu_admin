import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user.dart';
import '../../local/models/user_login_data.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory UserModel({
    required String userId,
    required String foundationId,
    required String fullName,
    required String email,
    required String phoneNumber,
    required String gender,
    required String dob,
    String? address,
    required String createdAt,
    String? birthPlace,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

extension UserModelX on UserModel {
  User toEntity() {
    return User(
      userId: userId,
      foundationId: foundationId,
      fullName: fullName,
      email: email,
      phoneNumber: phoneNumber,
      gender: gender,
      dob: dob,
      createdAt: createdAt,
      address: address,
      birthPlace: birthPlace,
    );
  }

  UserLoginData toLocal(String studentNumberId, String password) {
    return UserLoginData(
      studentNumberId: studentNumberId,
      password: password,
      userId: userId,
      phoneNumber: phoneNumber,
      foundationId: foundationId,
      fullName: fullName,
      email: email,
      gender: gender,
      dob: dob,
      createdAt: createdAt,
      address: address,
      birthPlace: birthPlace,
    );
  }
}


