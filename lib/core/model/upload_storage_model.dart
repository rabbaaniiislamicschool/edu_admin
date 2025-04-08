import 'dart:typed_data';

class UploadStorageModel {
  final String fileName;
  final String fileExt;
  final Uint8List bytes;

  UploadStorageModel({
    required this.fileName,
    required this.bytes,
    required this.fileExt,
  });
}

extension UploadStorageModelX on UploadStorageModel {
  UploadStorage toEntity() =>
      UploadStorage(fileName: fileName, bytes: bytes, fileExt: fileExt);
}

class UploadStorage {
  final String fileName;
  final Uint8List bytes;
  final String fileExt;

  UploadStorage({
    required this.fileName,
    required this.bytes,
    required this.fileExt,
  });
}

extension UploadStorageX on UploadStorage {
  UploadStorageModel toModel() =>
      UploadStorageModel(fileName: fileName, bytes: bytes, fileExt: fileExt);
}
