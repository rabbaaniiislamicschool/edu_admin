import 'package:edu_admin/core/utils/string_utils.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:forui/forui.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../../core/utils/custom_date_utils.dart';
import '../../domain/entities/school.dart';

class DetailSchoolDialog extends HookWidget {
  final School school;

  const DetailSchoolDialog({super.key, required this.school});

  @override
  Widget build(BuildContext context) {
    return ShadDialog(
      title: Text(
        'Detail Sekolah',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Divider(),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: context.borderColor, width: 1),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: FAvatar(
                  image: NetworkImage('${school.imageUrl}'),
                  fallback: Text(
                    StringUtils.getInitials(school.schoolName),
                    style: context.shadTextTheme.large,
                  ),
                  size: 72,
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          _buildDetailRow('ID', '${school.schoolId ?? ''}'),
          _buildDetailRow('Nama Sekolah', school.schoolName, isBold: true),
          _buildDetailRow('Cabang', school.branch?.branchName ?? ''),
          _buildDetailRow('Alamat', school.address ?? ''),
          _buildDetailRow('Nomer Telepon', school.phoneNumber ?? ''),
          _buildDetailRow(
            'Koordinat Lokasi',
            school.latitude != null && school.longitude != null
                ? '${school.latitude}, ${school.longitude}'
                : '',
          ),
          _buildDetailRow(
            'Tanggal Dibuat',
            CustomDateUtils.formatStringDate('${school.createdAt}') ?? '',
          ),
          _buildDetailRow(
            'Tanggal Diperbarui',
            CustomDateUtils.formatStringDate('${school.updatedAt}') ?? '',
          ),
        ],
      ),
    );
  }

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
            child: Builder(
              builder: (context) {
                return SelectableText(
                  value,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                    color: context.onBackgroundColor,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
