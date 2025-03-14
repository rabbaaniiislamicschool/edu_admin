import 'package:edu_admin/features/foundations/domain/entities/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/model/upload_storage_model.dart';
import '../../data/models/branch_model.dart';

part 'branch.freezed.dart';

@freezed
abstract class Branch with _$Branch {
  factory Branch({
    int? branchId,
    required String foundationId,
    required String branchName,
    String? address,
    String? phoneNumber,
    String? email,
    double? latitude,
    double? longitude,
    String? createdAt,
    String? updatedAt,
    String? imageUrl,
    Foundation? foundation,
    UploadStorage? uploadStorage
  }) = _Branch;


  /// Parsing dari List Excel ke `Foundation` + VALIDASI
  factory Branch.fromExcelRow(List<dynamic> row, Map<String, String?> foundationMapping) {
    // **Validasi Format Data**
    if (row.length < 6) {
      throw FormatException("Data tidak lengkap, harap periksa file Excel.");
    }

    String foundationName = row[0];
    String branchName = row[1];
    String address = row[2];
    String phoneNumber = row[3];
    String email = row[4];
    String coordinate = row[5];

    if (foundationName.isEmpty) {
      throw FormatException("Kolom 'Nama Yayasan' wajib diisi.");
    }
    final foundationId = foundationMapping[foundationName];

    if (foundationId == null) {
      throw FormatException("Kolom 'Nama Yayasan' tidak terdaftar");
    }

    if (branchName.isEmpty) {
      throw FormatException("Kolom 'Nama Cabang' wajib diisi.");
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

    return Branch(
      branchName: foundationName,
      address: address,
      phoneNumber: phoneNumber,
      email: email,
      foundationId: foundationId,
      latitude: latitude,
      longitude: longitude,
      // websiteUrl: websiteUrl,
    );
  }

}

extension BranchX on Branch {
  BranchModel toModel() => BranchModel(
    branchId: branchId,
    foundationId: foundationId,
    branchName: branchName,
    address: address,
    phoneNumber: phoneNumber,
    email: email,
    latitude: latitude,
    longitude: longitude,
    createdAt: createdAt,
    updatedAt: updatedAt,
    imageUrl: imageUrl,
    foundation: foundation?.toModel(),
  );
}