import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import '../../../../core/utils/custom_date_utils.dart';
import '../../domain/entities/division.dart';

class DetailDivisionDialog extends HookWidget {
  final Division division;

  const DetailDivisionDialog({super.key, required this.division});

  @override
  Widget build(BuildContext context) {
    return ShadDialog(
      title: Text(
        'Detail Divisi',
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
          SizedBox(height: 16),
          _buildDetailRow('ID', '${division.divisionId ?? ''}'),
          _buildDetailRow('Nama Divisi', division.divisionName, isBold: true),
          _buildDetailRow(
            'Tanggal Dibuat',
            CustomDateUtils.formatStringDate('${division.createdAt}') ?? '',
          ),
          _buildDetailRow(
            'Tanggal Diperbarui',
            CustomDateUtils.formatStringDate('${division.updatedAt}') ?? '',
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
