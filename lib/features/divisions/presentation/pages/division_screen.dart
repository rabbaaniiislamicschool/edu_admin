import 'dart:typed_data';
import 'package:edu_admin/core/utils/custom_date_utils.dart';
import 'package:edu_admin/features/branchs/presentation/manager/branch_bloc.dart';
import 'package:edu_admin/features/divisions/presentation/pages/upsert_division_dialog.dart';
import 'package:excel/excel.dart';
import 'package:file_picker/file_picker.dart';
import 'package:edu_admin/core/components/custom_pluto_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../domain/entities/division.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:file_saver/file_saver.dart';
import 'package:forui/forui.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:pluto_grid_export/pluto_grid_export.dart' as pluto_grid_export;
import '../manager/division_bloc.dart';
import '../manager/division_event.dart';
import '../manager/division_state.dart';
import 'detail_division_dialog.dart';

class DivisionsScreen extends HookWidget {
  const DivisionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stateManager = useState<PlutoGridStateManager?>(null);

    useEffect(() {
      context.read<DivisionBloc>().add(DivisionEvent.fetchAllDivisions());
      return null;
    }, []);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh:
            () async => context.read<DivisionBloc>().add(
              DivisionEvent.fetchAllDivisions(),
            ),
        child: BlocConsumer<DivisionBloc, DivisionState>(
          listener: (context, state) {
            if (state.status == DivisionStatus.deleteSuccess) {
              context.showSuccessMessage('Berhasil menghapus data');
              context.read<DivisionBloc>().add(
                DivisionEvent.fetchAllDivisions(),
              );
            }
            if (state.status == DivisionStatus.importSuccess) {
              context.showSuccessMessage('Berhasil import data');
              context.read<DivisionBloc>().add(
                DivisionEvent.fetchAllDivisions(),
              );
            }
            if (state.status == DivisionStatus.failure &&
                state.errorMessage != null) {
              context.showErroMessage(state.errorMessage!);
            }
          },
          builder: (context, state) {
            final divisions = state.divisions ?? [];
            return CustomPlutoTable(
              isLoading: state.status == DivisionStatus.loading,
              onLoaded: (manager) {
                manager.autoFitColumn(context, manager.columns.last);
                return stateManager.value = manager;
              },
              title: 'Divisi',
              menus: [
                CustomMenu(
                  title: 'Template Import Divisi',
                  icon: Icons.download,
                  onTap: () async {
                    final branches =
                        await context.read<BranchBloc>().fetchAllBranches();
                    branches.fold(
                      (failure) => context.showErroMessage(failure.message),
                      (branches) => _generateImportTemplate(
                        'Data Template Import Divisi',
                      ),
                    );
                  },
                ),
                CustomMenu(
                  title: 'Import data',
                  icon: Icons.upload,
                  onTap: () async {
                    final branches =
                        await context.read<BranchBloc>().fetchAllBranches();
                    branches.fold(
                      (failure) => context.showErroMessage(failure.message),
                      (branches) => _importExcelData(context),
                    );
                  },
                ),
                CustomMenu(
                  title: 'Tambah Divisi',
                  icon: Icons.add,
                  onTap: () async {
                    _showUpsertDivisionDialog(context: context, division: null);
                  },
                ),
                CustomMenu(
                  title: 'Download Data Divisi',
                  icon: Icons.download,
                  onTap: () async {
                    final branches =
                        await context.read<BranchBloc>().fetchAllBranches();
                    branches.fold(
                      (failure) => context.showErroMessage(failure.message),
                      (branches) =>
                          _generateDataDivisions(divisions, 'Data Divisi'),
                    );
                  },
                ),
                CustomMenu(
                  title: 'Print',
                  icon: Icons.print,
                  onTap: () {
                    if (stateManager.value == null) return;
                    _printPdf(stateManager.value!, 'Data Divisi');
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
                          (context) =>
                              DetailDivisionDialog(division: divisions[index]),
                    );
                  },
                ),
                CustomAction(
                  title: 'Edit',
                  icon: FAssets.icons.pen,
                  style: FButtonStyle.outline,
                  onTap: (index) {
                    _showUpsertDivisionDialog(
                      context: context,
                      division: divisions[index],
                    );
                  },
                ),
                CustomAction(
                  title: 'Hapus',
                  icon: FAssets.icons.trash,
                  style: FButtonStyle.destructive,
                  onTap: (index) {
                    _showDeleteDivisionDialog(context, divisions[index]);
                  },
                ),
              ],
              columns: [
                PlutoColumn(
                  title: 'Divisi',
                  field: 'division_name',
                  type: PlutoColumnType.text(),
                  suppressedAutoSize: true,
                ),
                PlutoColumn(
                  title: 'Tanggal Dibuat',
                  field: 'created_at',
                  type: PlutoColumnType.text(),
                ),
                PlutoColumn(
                  title: 'Tanggal Diperbarui',
                  field: 'update_at',
                  type: PlutoColumnType.text(),
                ),
              ],
              rows:
                  divisions.mapWithIndex((division, index) {
                    return PlutoRow(
                      cells: {
                        'no': PlutoCell(value: '${index + 1}'), // Required
                        'action': PlutoCell(value: ''), // Required
                        'division_name': PlutoCell(
                          value: division.divisionName,
                        ),
                        'created_at': PlutoCell(
                          value: CustomDateUtils.formatStringDate(
                            '${division.createdAt}',
                          ),
                        ),
                        'update_at': PlutoCell(
                          value: CustomDateUtils.formatStringDate(
                            '${division.updatedAt}',
                          ),
                        ),
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

  Future<List<Division>> _importExcelData(BuildContext context) async {
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
    List<Division> divisions = [];
    List<String> errors = [];

    var firstSheet = excel.tables.keys.first;
    var rows = excel.tables[firstSheet]?.rows ?? [];
    int requiredColumns = rows.isNotEmpty ? rows[0].length - 1 : 0;

    for (int i = 1; i < rows.length; i++) {
      var row =
          rows[i].map((cell) => cell?.value.toString().trim() ?? "").toList();

      if (row.length < requiredColumns ||
          row.take(requiredColumns).every((cell) => cell.isEmpty)) {
        continue;
      }

      try {
        divisions.add(Division.fromExcelRow(row));
      } on FormatException catch (e) {
        errors.add("Baris ${i + 1}: ${e.toString()}");
      }
    }

    if (errors.isNotEmpty && context.mounted) {
      final error = errors.join('\n');
      context.showErroMessage("Kesalahan saat import data: $error");
      return [];
    }
    return divisions;
  }

  Future<void> _generateDataDivisions(
    List<Division> divisions,
    String fileName,
  ) async {
    var excel = Excel.createExcel();
    var sheet = excel['Sheet1'];

    // Header
    sheet.appendRow([
      TextCellValue('ID'),
      TextCellValue('Nama Divisi'),
      TextCellValue('Tanggal Dibuat'),
      TextCellValue('Tanggal Diperbarui'),
    ]);

    for (final division in divisions) {
      sheet.appendRow([
        TextCellValue(division.divisionId.toString()),
        TextCellValue(division.divisionName),
        DateCellValue.fromDateTime(DateTime.parse(('${division.createdAt}'))),
        DateCellValue.fromDateTime(DateTime.parse(('${division.updatedAt}'))),
      ]);
    }

    for (var columnIndex = 0; columnIndex < sheet.maxColumns; columnIndex++) {
      sheet.setColumnAutoFit(columnIndex);
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

    sheet.appendRow([TextCellValue('Nama Divisi (Harus diisi)')]);

    sheet.appendRow([TextCellValue('Guru SD')]);

    for (var columnIndex = 0; columnIndex < sheet.maxColumns; columnIndex++) {
      sheet.setColumnAutoFit(columnIndex);
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

  void _showDeleteDivisionDialog(BuildContext context, Division division) {
    showShadDialog(
      context: context,
      builder: (context) {
        final divisionId = division.divisionId;
        final divisionName = division.divisionName;
        return ShadDialog.alert(
          title: const Text('Peringatan'),
          description: Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Wrap(
              children: [
                Text('Apakah anda yakin akan menghapus data '),
                Text(
                  '$divisionName?',
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
                if (divisionId == null) return;
                context.read<DivisionBloc>().add(
                  DivisionEvent.deleteDivision(divisionId),
                );
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }

  void _showUpsertDivisionDialog({
    required BuildContext context,
    Division? division,
  }) {
    showShadDialog(
      context: context,
      builder: (context) {
        return UpsertDivisionDialog(division: division);
      },
    );
  }
}
