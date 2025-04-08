import 'package:edu_admin/core/utils/string_utils.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:forui/forui.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../../core/utils/custom_date_utils.dart';
import '../../domain/entities/employee.dart';

class DetailEmployeeDialog extends HookWidget {
  final Employee employee;

  const DetailEmployeeDialog({super.key, required this.employee});

  @override
  Widget build(BuildContext context) {
    return ShadDialog(
      title: Text(
        'Detail Karyawan',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Divider(),
            ),
            _buildProfileImage(context),
            SizedBox(height: 16),

            // 🔹 Informasi Karyawan
            _buildSectionTitle('Informasi Karyawan'),
            _buildDetailRow('ID Karyawan', employee.employeeId ?? '-'),
            _buildDetailRow(
              'Nama Karyawan',
              employee.employeeName,
              isBold: true,
            ),
            _buildDetailRow('Nomor Induk', employee.employeeNumberId ?? '-'),
            _buildDetailRow('Divisi', employee.division?.divisionName ?? '-'),
            _buildDetailRow('Status', employee.status ?? '-'),
            _buildDetailRow(
              'Apakah Mengajar?',
              employee.isTeaching == true ? 'Ya' : 'Tidak',
            ),
            _buildDetailRow(
              'Tanggal Bergabung',
              CustomDateUtils.formatStringDate(employee.hiredDate) ?? '-',
            ),
            _buildDetailRow(
              'Tanggal Keluar',
              CustomDateUtils.formatStringDate(employee.leaveDate) ?? '-',
            ),
            _buildDetailRow(
              'Dibuat Pada',
              CustomDateUtils.formatStringDate(employee.createdAt) ?? '-',
            ),
            _buildDetailRow(
              'Diperbarui Pada',
              CustomDateUtils.formatStringDate(employee.updatedAt) ?? '-',
            ),

            SizedBox(height: 16),

            // 🔹 Informasi Pengguna (User)
            if (employee.user != null) ...[
              _buildSectionTitle('Informasi Pengguna'),
              _buildDetailRow('Nama Lengkap', employee.user!.fullName),
              _buildDetailRow('Jenis Kelamin', employee.user!.gender),
              _buildDetailRow('Tempat Lahir', employee.user!.birthPlace),
              _buildDetailRow(
                'Tanggal Lahir',
                CustomDateUtils.formatStringDate(employee.user!.dob) ?? '-',
              ),
              _buildDetailRow('Email', employee.user!.email ?? '-'),
              _buildDetailRow('Alamat', employee.user!.address ?? '-'),
              _buildDetailRow('Nomor Telepon', employee.user!.phoneNumber),
            ],

            SizedBox(height: 16),

            // 🔹 Informasi Sekolah (School)
            if (employee.user?.school != null) ...[
              _buildSectionTitle('Informasi Sekolah'),
              _buildDetailRow(
                'ID Sekolah',
                employee.user!.school!.schoolId.toString(),
              ),
              _buildDetailRow(
                'Nama Sekolah',
                employee.user!.school!.schoolName,
              ),
            ],
          ],
        ),
      ),
    );
  }

  /// 🔹 Widget untuk menampilkan Foto Profil atau Inisial
  Widget _buildProfileImage(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: context.borderColor, width: 1),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: FAvatar(
            image: NetworkImage(employee.user!.imageUrl ?? ''),
            fallback: Text(
              StringUtils.getInitials(employee.employeeName),
              style: context.shadTextTheme.large,
            ),
            size: 72,
          ),
        ),
      ),
    );
  }

  /// 🔹 Widget untuk menampilkan judul setiap bagian
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }

  /// 🔹 Widget untuk menampilkan detail dalam format baris
  Widget _buildDetailRow(String title, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: Text(title, style: TextStyle(fontSize: 14))),
          SizedBox(width: 8),
          Expanded(
            flex: 3,
            child: SelectableText(
              value,
              style: TextStyle(
                fontSize: 14,
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
