import 'package:edu_admin/core/model/upload_storage_model.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/remote/models/user_model.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
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
    UploadStorage? uploadStrorage,
    School? school,
  }) = _User;
}

extension UserX on User {
  UserModel toModel() {
    return UserModel(
      userId: userId,
      schoolId: schoolId,
      fullName: fullName,
      email: email,
      phoneNumber: phoneNumber,
      gender: gender,
      dob: dob,
      createdAt: createdAt,
      birthPlace: birthPlace,
      address: address,
      imageUrl: imageUrl,
      uploadStorage: uploadStrorage?.toModel(),
      school: school?.toModel(),
    );
  }
}
