import 'package:edu_admin/features/foundations/data/models/foundation_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/model/upload_storage_model.dart';

part 'foundation.freezed.dart';

@freezed
abstract class Foundation with _$Foundation {
  factory Foundation({
    String? foundationId,
    required String foundationName,
    String? address,
    String? phoneNumber,
    String? email,
    String? createdAt,
    String? updatedAt,
    String? merchantCode,
    String? merchantApiKey,
    String? websiteUrl,
    String? imageUrl,
    bool? isAdmin,
    UploadStorage? uploadStorage
  }) = _Foundation;

  /// Parsing dari List Excel ke `Foundation` + VALIDASI
  factory Foundation.fromExcelRow(List<dynamic> row) {
    // **Validasi Format Data**
    if (row.length < 5) {
      throw FormatException("Data tidak lengkap, harap periksa file Excel.");
    }

    String? foundationName = row[0]?.toString();
    String? address = row[1]?.toString();
    String? phoneNumber = row[2]?.toString();
    String? email = row[3]?.toString();
    String? websiteUrl = row[4]?.toString();

    // **Validasi Kolom Wajib**
    if (foundationName == null || foundationName.isEmpty) {
      throw FormatException("Kolom 'Foundation Name' wajib diisi.");
    }
    // **Validasi Format Email**
    if (phoneNumber == null || phoneNumber.isEmpty) {
      throw FormatException("Kolom 'Nomor Telepon' wajib diisi.");
    }
    // **Validasi Format Email**
    if (email == null || email.isEmpty) {
      throw FormatException("Kolom 'Email' wajib diisi.");
    }

    final phoneRegex = RegExp(r"^(\+62|62|0)[2-9][0-9]{8,12}$");
    if (!phoneRegex.hasMatch(phoneNumber)) {
      throw FormatException("Nomor telepon tidak valid: $phoneNumber");
    }

    final emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
    if (!emailRegex.hasMatch(email)) {
      throw FormatException("Format email tidak valid: $email");
    }

    return Foundation(
      foundationName: foundationName,
      address: address,
      phoneNumber: phoneNumber,
      email: email,
      websiteUrl: websiteUrl,
    );
  }

}

extension FoundationX on Foundation {
  FoundationModel toModel() => FoundationModel(
    foundationName: foundationName,
    email: email,
    merchantCode: merchantCode,
    address: address,
    createdAt: createdAt,
    websiteUrl: websiteUrl,
    foundationId: foundationId,
    isAdmin: isAdmin,
    imageUrl: imageUrl,
    merchantApiKey: merchantApiKey,
    phoneNumber: phoneNumber,
    updatedAt: updatedAt,
    uploadStorage: uploadStorage?.toModel(),
  );
}
