import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user.dart';

part 'user_login_data.freezed.dart';

@freezed
class UserLoginData with _$UserLoginData {
  const factory UserLoginData({
    required String studentNumberId,
    required String password,
    required String userId,
    required String foundationId,
    required String fullName,
    required String email,
    required String gender,
    required String dob,
    String? address,
    required String createdAt,
    String? birthPlace,
    required String phoneNumber
  }) = _UserLoginData;
}

extension UserLoginDataX on UserLoginData {
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
      savedPassword: password,
      studentNumberId: studentNumberId,
    );
  }
}