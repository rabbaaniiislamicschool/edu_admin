// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class UserLoginDataAdapter extends TypeAdapter<UserLoginData> {
  @override
  final int typeId = 0;

  @override
  UserLoginData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserLoginData(
      userId: fields[2] as String?,
      schoolId: (fields[12] as num).toInt(),
      fullName: fields[4] as String,
      phoneNumber: fields[11] as String,
      gender: fields[6] as String,
      dob: fields[7] as String,
      birthPlace: fields[10] as String,
      email: fields[5] as String?,
      address: fields[8] as String?,
      createdAt: fields[9] as String?,
      imageUrl: fields[13] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserLoginData obj) {
    writer
      ..writeByte(11)
      ..writeByte(2)
      ..write(obj.userId)
      ..writeByte(4)
      ..write(obj.fullName)
      ..writeByte(5)
      ..write(obj.email)
      ..writeByte(6)
      ..write(obj.gender)
      ..writeByte(7)
      ..write(obj.dob)
      ..writeByte(8)
      ..write(obj.address)
      ..writeByte(9)
      ..write(obj.createdAt)
      ..writeByte(10)
      ..write(obj.birthPlace)
      ..writeByte(11)
      ..write(obj.phoneNumber)
      ..writeByte(12)
      ..write(obj.schoolId)
      ..writeByte(13)
      ..write(obj.imageUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserLoginDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
