import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/remote/models/user_model.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
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
    String? studentNumberId,
    String? savedPassword,
  }) = _User;
}

extension UserX on User {
  UserModel toModel() {
    return UserModel(
      userId: userId,
      foundationId: foundationId,
      fullName: fullName,
      email: email,
      phoneNumber: phoneNumber,
      gender: gender,
      dob: dob,
      createdAt: createdAt,
      birthPlace: birthPlace,
      address: address,
    );
  }
}
