import 'package:edu_admin/core/model/upload_storage_model.dart';
import 'package:edu_admin/features/branchs/domain/entities/branch.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/school_model.dart';

part 'school.freezed.dart';

@freezed
abstract class School with _$School {
  factory School({
    int? schoolId,
    required String schoolName,
    String? address,
    String? phoneNumber,
    String? email,
    double? latitude,
    double? longitude,
    String? createdAt,
    String? updatedAt,
    String? imageUrl,
    required int branchId,
    Branch? branch,
    UploadStorage? uploadStorage,
  }) = _School;

  /// Parsing dari List Excel ke `School` + VALIDASI
  factory School.fromExcelRow(
    List<dynamic> row,
    Map<String, int?> schoolMapping,
  ) {
    // **Validasi Format Data**
    if (row.length < 6) {
      throw FormatException("Data tidak lengkap, harap periksa file Excel.");
    }

    String schoolName = row[0];
    String branchName = row[1];
    String address = row[2];
    String phoneNumber = row[3];
    String email = row[4];
    String coordinate = row[5];

    if (branchName.isEmpty) {
      throw FormatException("Kolom 'Nama Cabang' wajib diisi.");
    }

    final branchId = schoolMapping[branchName];

    if (branchId == null) {
      throw FormatException("Kolom 'Nama Cabang' tidak terdaftar");
    }

    if (schoolName.isEmpty) {
      throw FormatException("Kolom 'Nama Sekolah' wajib diisi.");
    }

    if (phoneNumber.isEmpty) {
      throw FormatException("Kolom 'Nomor Telepon' wajib diisi.");
    }
    // **Validasi Format Email**
    if (email.isEmpty) {
      throw FormatException("Kolom 'Email' wajib diisi.");
    }

    if (coordinate.isEmpty) {
      throw FormatException("Kolom 'Koordinat' wajib diisi.");
    }

    final phoneRegex = RegExp(r"^(\+62|62|0)[2-9][0-9]{8,12}$");
    if (!phoneRegex.hasMatch(phoneNumber)) {
      throw FormatException("Nomor telepon tidak valid: $phoneNumber");
    }

    final emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
    if (!emailRegex.hasMatch(email)) {
      throw FormatException("Format email tidak valid: $email");
    }

    List<String> latLng = coordinate.split(",");
    double? latitude = double.tryParse(latLng[0].trim());
    double? longitude = double.tryParse(latLng[1].trim());

    if (latitude == null || longitude == null) {
      throw FormatException("Format koordinat tidak valid: $coordinate");
    }

    return School(
      schoolName: schoolName,
      address: address,
      phoneNumber: phoneNumber,
      email: email,
      latitude: latitude,
      longitude: longitude,
      branchId: branchId,
      // websiteUrl: websiteUrl,
    );
  }
}

extension SchoolX on School {
  SchoolModel toModel() => SchoolModel(
    schoolId: schoolId,
    schoolName: schoolName,
    address: address,
    phoneNumber: phoneNumber,
    email: email,
    latitude: latitude,
    longitude: longitude,
    createdAt: createdAt,
    updatedAt: updatedAt,
    branchId: branchId,
    imageUrl: imageUrl,
    branch: branch?.toModel(),
    uploadStorage: uploadStorage?.toModel(),
  );
}
