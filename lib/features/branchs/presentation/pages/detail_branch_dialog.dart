import 'package:edu_admin/core/utils/string_utils.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:forui/forui.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../../core/utils/custom_date_utils.dart';
import '../../domain/entities/branch.dart';

class DetailBranchDialog extends HookWidget {
  final Branch branch;

  const DetailBranchDialog({super.key, required this.branch});

  @override
  Widget build(BuildContext context) {
    return ShadDialog(
      title: Text(
        'Detail Cabang',
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
                  image: NetworkImage('${branch.imageUrl}'),
                  fallback: Text(
                    StringUtils.getInitials(branch.branchName),
                    style: context.shadTextTheme.large,
                  ),
                  size: 72,
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          _buildDetailRow('ID', branch.foundationId),
          _buildDetailRow('Nama Cabang', branch.branchName, isBold: true),
          _buildDetailRow('Yayasan', branch.foundation?.foundationName ?? ''),
          _buildDetailRow('Alamat', branch.address ?? ''),
          _buildDetailRow('Nomer Telepon', branch.phoneNumber ?? ''),
          _buildDetailRow(
            'Koordinat Lokasi',
            branch.latitude != null && branch.longitude != null
                ? '${branch.latitude}, ${branch.longitude}'
                : '',
          ),
          _buildDetailRow(
            'Tanggal Dibuat',
            CustomDateUtils.formatStringDate('${branch.createdAt}') ?? '',
          ),
          _buildDetailRow(
            'Tanggal Diperbarui',
            CustomDateUtils.formatStringDate('${branch.updatedAt}') ?? '',
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
