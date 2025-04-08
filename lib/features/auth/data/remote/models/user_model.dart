import 'package:edu_admin/core/model/upload_storage_model.dart';
import 'package:edu_admin/features/schools/data/models/school_model.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user.dart';
import '../../local/models/user_login_data.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory UserModel({
    @JsonKey(name: 'user_id', includeIfNull: false) String? userId,
    required int schoolId,
    required String fullName,
    required String phoneNumber,
    required String gender,
    required String dob,
    required String birthPlace,
    String? email,
    String? address,
    @JsonKey(includeToJson: false) String? createdAt,
    String? imageUrl,
    @JsonKey(includeFromJson: false, includeToJson: false)
    UploadStorageModel? uploadStorage,
    @JsonKey(name: 'schools', includeToJson: false) SchoolModel? school,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

extension UserModelX on UserModel {
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
      uploadStrorage: uploadStorage?.toEntity(),
      school: school?.toEntity(),
    );
  }

  UserLoginData toLocal() {
    return UserLoginData(
      imageUrl: imageUrl,
      userId: userId,
      phoneNumber: phoneNumber,
      schoolId: schoolId,
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
