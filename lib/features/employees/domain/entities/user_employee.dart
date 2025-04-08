import 'package:edu_admin/features/auth/domain/entities/user.dart';
import 'package:edu_admin/features/employees/data/remote/models/user_employee_model.dart';
import 'package:edu_admin/features/employees/domain/entities/employee.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

part 'user_employee.freezed.dart';

@freezed
abstract class UserEmployee with _$UserEmployee {
  factory UserEmployee({required User user, required Employee employee}) =
      _UserEmployee;

  factory UserEmployee.fromExcelRow(
    List<dynamic> row,
    Map<String, int?> divisionMapping,
    Map<String, int?> schoolMapping,
  ) {
    String getValue(int index, {bool required = false, String? label}) {
      final val = row.length > index ? row[index].toString().trim() : '';
      if (required && val.isEmpty) {
        throw FormatException(
          "Kolom '${label ?? 'Kolom ke-${index + 1}'}' wajib diisi.",
        );
      }
      return val;
    }

    final nip = getValue(0, required: true, label: 'NIP');
    final nama = getValue(1, required: true, label: 'Nama Pegawai');
    final schoolName = getValue(2, required: true, label: 'Jenjang');
    final schoolId = schoolMapping[schoolName];
    if (schoolId == null) {
      throw FormatException("Jenjang tidak terdaftar: $schoolName");
    }

    final phone = getValue(3, required: true, label: 'Nomor Telepon');
    final phoneRegex = RegExp(r"^(\+62|62|0)[2-9][0-9]{8,12}$");
    if (!phoneRegex.hasMatch(phone)) {
      throw FormatException("Nomor telepon tidak valid: $phone");
    }

    final gender =
        getValue(4, required: true, label: 'Jenis Kelamin').toUpperCase();
    if (!(gender == 'L' || gender == 'P')) {
      throw FormatException("Jenis Kelamin harus 'L' atau 'P'");
    }

    final birthPlace = getValue(5, required: true, label: 'Tempat Lahir');
    final dobStr = getValue(6, required: true, label: 'Tanggal Lahir');
    final dob = DateFormat('dd-MM-yyyy').tryParse(dobStr);
    if (dob == null) {
      throw FormatException("Format Tanggal Lahir salah: $dobStr");
    }

    final email = getValue(7);
    if (email.isNotEmpty &&
        !RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(email)) {
      throw FormatException("Email tidak valid: $email");
    }

    final address = getValue(8);
    final divisionName = getValue(9);
    final divisionId =
        divisionName.isNotEmpty ? divisionMapping[divisionName] : null;
    if (divisionName.isNotEmpty && divisionId == null) {
      throw FormatException("Divisi tidak terdaftar: $divisionName");
    }

    final hiredDateStr = getValue(10);
    final hiredDate =
        hiredDateStr.isNotEmpty
            ? DateFormat('dd-MM-yyyy').tryParse(hiredDateStr) ??
                (throw FormatException(
                  "Format Tanggal Bekerja salah: $hiredDateStr",
                ))
            : null;

    final status = getValue(11);
    if (status.isNotEmpty &&
        !(status == 'Aktif' ||
            status == 'Tidak Aktif' ||
            status == 'Keluar' ||
            status == 'Cuti')) {
      throw FormatException(
        "Status harus: Aktif, Tidak Aktif, Keluar, atau Cuti",
      );
    }

    final teachingStr = getValue(12).toLowerCase();
    if (teachingStr.isNotEmpty &&
        teachingStr != 'ya' &&
        teachingStr != 'tidak') {
      throw FormatException("Apakah Mengajar harus 'Ya' atau 'Tidak'");
    }

    final isTeaching = teachingStr == 'ya';

    return UserEmployee(
      user: User(
        fullName: nama,
        email: email,
        phoneNumber: phone,
        gender: gender,
        dob: DateFormat('yyyy-MM-dd').format(dob),
        birthPlace: birthPlace,
        address: address,
        schoolId: schoolId,
      ),
      employee: Employee(
        employeeNumberId: nip,
        divisionId: divisionId,
        employeeName: nama,
        hiredDate: hiredDate?.toIso8601String(),
        status: status.isEmpty ? null : status,
        isTeaching: isTeaching,
      ),
    );
  }
}

extension UserEmployeeX on UserEmployee {
  UserEmployeeModel toModel() =>
      UserEmployeeModel(user: user.toModel(), employee: employee.toModel());
}
