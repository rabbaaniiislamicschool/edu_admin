import 'package:edu_admin/features/auth/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_login_data.freezed.dart';

@freezed
abstract class UserLoginData with _$UserLoginData {
  const factory UserLoginData({
    String? userId,
    required int schoolId,
    required String fullName,
    required String phoneNumber,
    required String gender,
    required String dob,
    required String birthPlace,
    String? email,
    String? address,
    String? createdAt,
    String? imageUrl,
  }) = _UserLoginData;
}

extension UserLoginDataX on UserLoginData {
  User toEntity() {
    return User(
      userId: userId,
      schoolId: schoolId,
      fullName: fullName,
      email: email,
      phoneNumber: phoneNumber,
      gender: gender,
      dob: dob,
      createdAt: createdAt,
      address: address,
      birthPlace: birthPlace,
      imageUrl: imageUrl,
    );
  }
}
