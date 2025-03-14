import 'dart:typed_data';
import 'package:edu_admin/core/utils/custom_date_utils.dart';
import 'package:edu_admin/features/foundations/presentation/pages/detail_foundation_dialog.dart';
import 'package:excel/excel.dart';
import 'package:file_picker/file_picker.dart';
import 'package:edu_admin/core/components/custom_pluto_table.dart';
import 'package:edu_admin/features/foundations/presentation/manager/foundation_event.dart';
import 'package:edu_admin/features/foundations/presentation/pages/upsert_foundation_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../domain/entities/foundation.dart';
import '../manager/foundation_bloc.dart';
import '../manager/foundation_state.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:file_saver/file_saver.dart';
import 'package:forui/forui.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:pluto_grid_export/pluto_grid_export.dart' as pluto_grid_export;

class FoundationsScreen extends HookWidget {
  const FoundationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stateManager = useState<PlutoGridStateManager?>(null);

    useEffect(() {
      context.read<FoundationBloc>().add(FoundationEvent.fetchFoundations());
      return null;
    }, []);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh:
            () async => context.read<FoundationBloc>().add(
              FoundationEvent.fetchFoundations(),
            ),
        child: BlocConsumer<FoundationBloc, FoundationState>(
          listener: (context, state) {
            if (state.status == FoundationStatus.deleteSuccess) {
              context.showSuccessMessage('Berhasil menghapus data');
              context.read<FoundationBloc>().add(
                FoundationEvent.fetchFoundations(),
              );
            }
            if (state.status == FoundationStatus.importSuccess) {
              context.showSuccessMessage('Berhasil import data');
              context.read<FoundationBloc>().add(
                FoundationEvent.fetchFoundations(),
              );
            }
            if (state.status == FoundationStatus.failure &&
                state.errorMessage != null) {
              context.showErroMessage(state.errorMessage!);
            }
          },
          builder: (context, state) {
            final foundations = state.foundations ?? [];
            return CustomPlutoTable(
              isLoading: state.status == FoundationStatus.loading,
              onLoaded: (manager) {
                manager.autoFitColumn(context, manager.columns.last);
                return stateManager.value = manager;
              },
              title: 'Yayasan',
              menus: [
                CustomMenu(
                  title: 'Template Import Yayasan',
                  icon: Icons.download,
                  onTap: () {
                    if (state.foundations?.isEmpty == true) return;
                    _generateImportTemplate('Data Template Import Yayasan');
                  },
                ),
                CustomMenu(
                  title: 'Import data',
                  icon: Icons.upload,
                  onTap: () async {
                    final data = await _importExcelData(context);
                    if (!context.mounted || data.isEmpty) return;
                    context.read<FoundationBloc>().add(
                      FoundationEvent.createFoundations(data),
                    );
                  },
                ),
                CustomMenu(
                  title: 'Tambah Yayasan',
                  icon: Icons.add,
                  onTap: () {
                    _showUpsertFoundationDialog(context: context);
                  },
                ),
                CustomMenu(
                  title: 'Download Data Yayasan',
                  icon: Icons.download,
                  onTap: () {
                    _generateDataFoundations(
                      foundations,
                      'Data Export Yayasan',
                    );
                  },
                ),
                CustomMenu(
                  title: 'Print',
                  icon: Icons.print,
                  onTap: () {
                    if (stateManager.value == null) return;
                    _printPdf(stateManager.value!, 'Data Yayasan');
                  },
                ),
              ],
              actionWidth: 120,
              actions: [
                CustomAction(
                  title: 'Lihat Detail',
                  icon: FAssets.icons.arrowRight,
                  style: FButtonStyle.primary,
                  onTap: (index) {
                    showShadDialog(
                      context: context,
                      builder:
                          (context) => DetailFoundationDialog(
                            foundation: foundations[index],
                          ),
                    );
                  },
                ),
                CustomAction(
                  title: 'Edit',
                  icon: FAssets.icons.pen,
                  style: FButtonStyle.outline,
                  onTap: (index) {
                    _showUpsertFoundationDialog(
                      context: context,
                      foundation: foundations[index],
                    );
                  },
                ),
                CustomAction(
                  title: 'Hapus',
                  icon: FAssets.icons.trash,
                  style: FButtonStyle.destructive,
                  onTap: (index) {
                    _showDeleteFoundationDialog(context, foundations[index]);
                  },
                ),
              ],
              columns: [
                PlutoColumn(
                  title: 'Yayasan',
                  field: 'foundation_name',
                  type: PlutoColumnType.text(),
                  suppressedAutoSize: true,
                ),
                PlutoColumn(
                  title: 'Alamat',
                  field: 'address',
                  type: PlutoColumnType.text(),
                ),
                PlutoColumn(
                  title: 'Nomor Telepon',
                  field: 'phone_number',
                  type: PlutoColumnType.text(),
                ),
                PlutoColumn(
                  title: 'Email',
                  field: 'email',
                  type: PlutoColumnType.text(),
                ),
                PlutoColumn(
                  title: 'Tanggal Dibuat',
                  field: 'created_at',
                  type: PlutoColumnType.text(),
                ),
                PlutoColumn(
                  title: 'Website',
                  field: 'website_url',
                  type: PlutoColumnType.text(),
                ),
                PlutoColumn(
                  title: 'Logo',
                  field: 'logo',
                  type: PlutoColumnType.text(),
                  renderer: (rendererContext) {
                    final imageUrl =
                        foundations[rendererContext.rowIdx].imageUrl;
                    return Image.network(
                      '$imageUrl',
                      width: 100,
                      height: 100,
                      fit: BoxFit.fitHeight,
                    );
                  },
                ),
              ],
              rows:
                  foundations.mapWithIndex((foundation, index) {
                    return PlutoRow(
                      cells: {
                        'no': PlutoCell(value: '${index + 1}'), // Required
                        'action': PlutoCell(value: ''), // Required
                        'foundation_name': PlutoCell(
                          value: foundation.foundationName,
                        ),
                        'address': PlutoCell(value: foundation.address ?? '-'),
                        'phone_number': PlutoCell(
                          value: foundation.phoneNumber ?? '-',
                        ),
                        'email': PlutoCell(value: foundation.email ?? '-'),
                        'created_at': PlutoCell(
                          value: CustomDateUtils.formatStringDate(
                            '${foundation.createdAt}',
                          ),
                        ),
                        'website_url': PlutoCell(
                          value: foundation.websiteUrl ?? '-',
                        ),
                        'logo': PlutoCell(value: foundation.imageUrl ?? '-'),
                      },
                    );
                  }).toList(),
            );
          },
        ),
      ),
    );
  }

  void _printPdf(PlutoGridStateManager stateManager, String fileName) async {
    var plutoGridPdfExport = pluto_grid_export.PlutoGridDefaultPdfExport(
      title: fileName,
      format: pluto_grid_export.PdfPageFormat.a4.landscape,
    );
    final bytes = await plutoGridPdfExport.export(stateManager);

    await pluto_grid_export.Printing.layoutPdf(
      onLayout: (pluto_grid_export.PdfPageFormat format) async => bytes,
    );
  }

  Future<List<Foundation>> _importExcelData(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['xlsx', 'xls'], // Hanya file Excel
    );

    if (result == null) {
      return [];
    }
    Uint8List? bytes = result.files.single.bytes; // Web & Mobile pakai bytes

    if (bytes == null) return [];

    var excel = Excel.decodeBytes(bytes);

    List<Foundation> foundations = [];
    List<String> errors = [];

    for (var table in excel.tables.keys) {
      var rows = excel.tables[table]!.rows;
      for (int i = 1; i < rows.length; i++) {
        var row = rows[i].map((cell) => cell?.value).toList();

        try {
          foundations.add(Foundation.fromExcelRow(row));
        } on FormatException catch (e) {
          errors.add("Baris ${i + 1}: ${e.message}");
        } catch (e) {
          errors.add("Baris ${i + 1}: ${e.toString()}");
        }
      }
    }

    if (errors.isNotEmpty && context.mounted) {
      final error = errors.join('\n');
      context.showErroMessage("Kesalahan saat import data: $error");
      return [];
    }
    return foundations;
  }

  Future<void> _generateDataFoundations(
    List<Foundation> foundations,
    String fileName,
  ) async {
    var excel = Excel.createExcel();
    var sheet = excel['Sheet1'];

    // Header
    sheet.appendRow([
      TextCellValue('ID'),
      TextCellValue('Nama Yayasan'),
      TextCellValue('Alamat'),
      TextCellValue('Nomer Telepon'),
      TextCellValue('Email'),
      TextCellValue('Website URL'),
      TextCellValue('Tanggal Dibuat'),
      TextCellValue('Tanggal Diperbarui'),
    ]);

    for (final foundation in foundations) {
      sheet.appendRow([
        TextCellValue(foundation.foundationId ?? ''),
        TextCellValue(foundation.foundationName),
        TextCellValue(foundation.address ?? ''),
        TextCellValue(foundation.phoneNumber ?? ''),
        TextCellValue(foundation.email ?? ''),
        TextCellValue(foundation.websiteUrl ?? ''),
        DateCellValue.fromDateTime(DateTime.parse(('${foundation.createdAt}'))),
        DateCellValue.fromDateTime(DateTime.parse(('${foundation.updatedAt}'))),
      ]);
    }

    List<int>? excelBytes = excel.encode();
    if (excelBytes == null) return;

    Uint8List uint8ListBytes = Uint8List.fromList(excelBytes);

    await FileSaver.instance.saveFile(
      name: fileName,
      bytes: uint8ListBytes,
      ext: 'xlsx',
      mimeType: MimeType.microsoftExcel,
    );
  }

  Future<void> _generateImportTemplate(String fileName) async {
    var excel = Excel.createExcel();
    var sheet = excel['Sheet1'];

    sheet.appendRow([
      TextCellValue('Nama Yayasan (Harus diisi)'),
      TextCellValue('Alamat (Harus diisi)'),
      TextCellValue('Nomer Telepon (Harus diisi)'),
      TextCellValue('Email (Harus diisi)'),
      TextCellValue('Website URL'),
    ]);
    sheet.appendRow([
      TextCellValue('Rabbaanii Islamic School'),
      TextCellValue(
        'Jl. Cimandiri 8 B RT 06/08 Graha Asri 17550, Jatireja, Kec. Cikarang Tim., Kabupaten Bekasi, Jawa Barat 17550',
      ),
      TextCellValue('085313642033'),
      TextCellValue('yayasanrabbaanii@gmail.com'),
      TextCellValue('https://rabbaanii.sch.id'),
    ]);

    List<int>? excelBytes = excel.encode();
    if (excelBytes == null) return;

    Uint8List uint8ListBytes = Uint8List.fromList(excelBytes);

    await FileSaver.instance.saveFile(
      name: fileName,
      bytes: uint8ListBytes,
      ext: 'xlsx',
      mimeType: MimeType.microsoftExcel,
    );
  }

  void _showDeleteFoundationDialog(
    BuildContext context,
    Foundation foundation,
  ) {
    showShadDialog(
      context: context,
      builder: (context) {
        final foundationId = foundation.foundationId;
        final foundationName = foundation.foundationName;
        return ShadDialog.alert(
          title: const Text('Peringatan'),
          description: Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Wrap(
              children: [
                Text('Apakah anda yakin akan menghapus data '),
                Text(
                  '$foundationName?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          actions: [
            ShadButton.outline(
              child: const Text('Batal'),
              onPressed: () => Navigator.of(context).pop(false),
            ),
            ShadButton.destructive(
              child: const Text('Hapus'),
              onPressed: () {
                if (foundationId == null) return;
                context.read<FoundationBloc>().add(
                  FoundationEvent.deleteFoundation(foundationId),
                );
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }

  void _showUpsertFoundationDialog({
    required BuildContext context,
    Foundation? foundation,
  }) {
    showShadDialog(
      context: context,
      builder: (context) {
        return UpsertFoundationDialog(foundation: foundation);
      },
    );
  }

}
