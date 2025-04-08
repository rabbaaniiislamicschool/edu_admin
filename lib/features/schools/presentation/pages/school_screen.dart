import 'dart:typed_data';
import 'package:edu_admin/core/utils/custom_date_utils.dart';
import 'package:edu_admin/features/branchs/domain/entities/branch.dart';
import 'package:edu_admin/features/branchs/presentation/manager/branch_bloc.dart';
import 'package:edu_admin/features/schools/presentation/pages/upsert_school_dialog.dart';
import 'package:excel/excel.dart';
import 'package:file_picker/file_picker.dart';
import 'package:edu_admin/core/components/custom_pluto_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../domain/entities/school.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:file_saver/file_saver.dart';
import 'package:forui/forui.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:pluto_grid_export/pluto_grid_export.dart' as pluto_grid_export;
import '../manager/school_bloc.dart';
import '../manager/school_event.dart';
import '../manager/school_state.dart';
import 'detail_school_dialog.dart';

class SchoolsScreen extends HookWidget {
  const SchoolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stateManager = useState<PlutoGridStateManager?>(null);

    useEffect(() {
      context.read<SchoolBloc>().add(SchoolEvent.fetchAllSchools());
      return null;
    }, []);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh:
            () async =>
                context.read<SchoolBloc>().add(SchoolEvent.fetchAllSchools()),
        child: BlocConsumer<SchoolBloc, SchoolState>(
          listener: (context, state) {
            if (state.status == SchoolStatus.deleteSuccess) {
              context.showSuccessMessage('Berhasil menghapus data');
              context.read<SchoolBloc>().add(SchoolEvent.fetchAllSchools());
            }
            if (state.status == SchoolStatus.importSuccess) {
              context.showSuccessMessage('Berhasil import data');
              context.read<SchoolBloc>().add(SchoolEvent.fetchAllSchools());
            }
            if (state.status == SchoolStatus.failure &&
                state.errorMessage != null) {
              context.showErroMessage(state.errorMessage!);
            }
          },
          builder: (context, state) {
            final schools = state.schools ?? [];
            return CustomPlutoTable(
              isLoading: state.status == SchoolStatus.loading,
              onLoaded: (manager) {
                manager.autoFitColumn(context, manager.columns.last);
                return stateManager.value = manager;
              },
              title: 'Sekolah',
              menus: [
                CustomMenu(
                  title: 'Template Import Sekolah',
                  icon: Icons.download,
                  onTap: () async {
                    final branches =
                        await context.read<BranchBloc>().fetchAllBranches();
                    branches.fold(
                      (failure) => context.showErroMessage(failure.message),
                      (branches) => _generateImportTemplate(
                        'Data Template Import Sekolah',
                        branches,
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
                      (branches) => _importExcelData(context, branches),
                    );
                  },
                ),
                CustomMenu(
                  title: 'Tambah Sekolah',
                  icon: Icons.add,
                  onTap: () async {
                    _showUpsertSchoolDialog(context: context, school: null);
                  },
                ),
                CustomMenu(
                  title: 'Download Data Sekolah',
                  icon: Icons.download,
                  onTap: () async {
                    final branches =
                        await context.read<BranchBloc>().fetchAllBranches();
                    branches.fold(
                      (failure) => context.showErroMessage(failure.message),
                      (branches) => _generateDataSchools(
                        schools,
                        'Data Sekolah',
                        branches,
                      ),
                    );
                  },
                ),
                CustomMenu(
                  title: 'Print',
                  icon: Icons.print,
                  onTap: () {
                    if (stateManager.value == null) return;
                    _printPdf(stateManager.value!, 'Data Sekolah');
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
                              DetailSchoolDialog(school: schools[index]),
                    );
                  },
                ),
                CustomAction(
                  title: 'Edit',
                  icon: FAssets.icons.pen,
                  style: FButtonStyle.outline,
                  onTap: (index) {
                    _showUpsertSchoolDialog(
                      context: context,
                      school: schools[index],
                    );
                  },
                ),
                CustomAction(
                  title: 'Hapus',
                  icon: FAssets.icons.trash,
                  style: FButtonStyle.destructive,
                  onTap: (index) {
                    _showDeleteSchoolDialog(context, schools[index]);
                  },
                ),
              ],
              columns: [
                PlutoColumn(
                  title: 'Sekolah',
                  field: 'school_name',
                  type: PlutoColumnType.text(),
                  suppressedAutoSize: true,
                ),
                PlutoColumn(
                  title: 'Cabang',
                  field: 'branch_name',
                  type: PlutoColumnType.text(),
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
                  title: 'Koordinat',
                  field: 'coordinate',
                  type: PlutoColumnType.text(),
                ),
                PlutoColumn(
                  title: 'Tanggal Dibuat',
                  field: 'created_at',
                  type: PlutoColumnType.text(),
                ),
                PlutoColumn(
                  title: 'Logo',
                  field: 'logo',
                  type: PlutoColumnType.text(),
                  renderer: (rendererContext) {
                    final imageUrl = schools[rendererContext.rowIdx].imageUrl;

                    return Image.network(
                      '$imageUrl',
                      errorBuilder:
                          (context, error, stackTrace) =>
                              Icon(Icons.photo, size: 32),
                      width: 100,
                      height: 100,
                      fit: BoxFit.fitHeight,
                    );
                  },
                ),
              ],
              rows:
                  schools.mapWithIndex((school, index) {
                    return PlutoRow(
                      cells: {
                        'no': PlutoCell(value: '${index + 1}'), // Required
                        'action': PlutoCell(value: ''), // Required
                        'school_name': PlutoCell(value: school.schoolName),
                        'branch_name': PlutoCell(
                          value: school.branch?.branchName ?? '-',
                        ),
                        'address': PlutoCell(value: school.address ?? '-'),
                        'phone_number': PlutoCell(
                          value: school.phoneNumber ?? '-',
                        ),
                        'email': PlutoCell(value: school.email ?? '-'),
                        'created_at': PlutoCell(
                          value: CustomDateUtils.formatStringDate(
                            '${school.createdAt}',
                          ),
                        ),
                        'coordinate': PlutoCell(
                          value: '${school.latitude}, ${school.longitude}',
                        ),
                        'logo': PlutoCell(value: ''),
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

  Future<List<School>> _importExcelData(
    BuildContext context,
    List<Branch> branches,
  ) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['xlsx', 'xls'], // Hanya file Excel
    );

    if (result == null) {
      return [];
    }
    Uint8List? bytes = result.files.single.bytes; // Web & Mobile pakai bytes
    if (bytes == null) return [];

    final branchMapping = {
      for (var item in branches) item.branchName: item.branchId,
    };

    var excel = Excel.decodeBytes(bytes);
    List<School> schools = [];
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
        schools.add(School.fromExcelRow(row, branchMapping));
      } on FormatException catch (e) {
        errors.add("Baris ${i + 1}: ${e.toString()}");
      }
    }

    if (errors.isNotEmpty && context.mounted) {
      final error = errors.join('\n');
      context.showErroMessage("Kesalahan saat import data: $error");
      return [];
    }
    return schools;
  }

  Future<void> _generateDataSchools(
    List<School> schools,
    String fileName,
    List<Branch> branches,
  ) async {
    var excel = Excel.createExcel();
    var sheet = excel['Sheet1'];

    final branchMapping = {
      for (var item in branches) item.branchId: item.branchName,
    };

    // Header
    sheet.appendRow([
      TextCellValue('ID'),
      TextCellValue('Nama Sekolah'),
      TextCellValue('Cabang'),
      TextCellValue('Alamat'),
      TextCellValue('Nomer Telepon'),
      TextCellValue('Email'),
      TextCellValue('Koordinat'),
      TextCellValue('Tanggal Dibuat'),
      TextCellValue('Tanggal Diperbarui'),
      TextCellValue('Keterangan - Daftar Cabang:'),
    ]);

    for (final school in schools) {
      sheet.appendRow([
        TextCellValue(school.schoolId.toString()),
        TextCellValue(school.schoolName),
        TextCellValue(branchMapping[school.branchId] ?? ''),
        TextCellValue(school.address ?? ''),
        TextCellValue(school.phoneNumber ?? ''),
        TextCellValue(school.email ?? ''),
        TextCellValue(
          school.latitude != null && school.longitude != null
              ? '${school.latitude}, ${school.longitude}'
              : '',
        ),
        // TextCellValue(school.websiteUrl ?? ''),
        DateCellValue.fromDateTime(DateTime.parse(('${school.createdAt}'))),
        DateCellValue.fromDateTime(DateTime.parse(('${school.updatedAt}'))),
      ]);
    }

    for (int i = 0; i < branches.length; i++) {
      final branchName = branches[i].branchName;
      sheet.updateCell(
        CellIndex.indexByColumnRow(columnIndex: 9, rowIndex: i + 1),
        TextCellValue(branchName),
      );
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

  Future<void> _generateImportTemplate(
    String fileName,
    List<Branch> branches,
  ) async {
    var excel = Excel.createExcel();
    var sheet = excel['Sheet1'];

    sheet.appendRow([
      TextCellValue('Nama Sekolah (Harus diisi)'),
      TextCellValue('Cabang (Harus diisi)'),
      TextCellValue('Alamat (Harus diisi)'),
      TextCellValue('Nomer Telepon (Harus diisi)'),
      TextCellValue('Email (Harus diisi)'),
      TextCellValue('Koordinat (Harus diisi)'),
      TextCellValue('Keterangan - Daftar Cabang:'),
    ]);

    sheet.appendRow([
      TextCellValue('SDIT RABBAANII'),
      TextCellValue('Rabbaanii Cikarang'),
      TextCellValue(
        'Jl. Cimandiri 8 B RT 06/08 Graha Asri 17550, Jatireja, Kec. Cikarang Tim., Kabupaten Bekasi, Jawa Barat 17550',
      ),
      TextCellValue('085313642033'),
      TextCellValue('yayasanrabbaanii@gmail.com'),
      TextCellValue('-6.2848666, 107.1856459'),
    ]);

    for (int i = 0; i < branches.length; i++) {
      final branchName = branches[i].branchName;
      sheet.updateCell(
        CellIndex.indexByColumnRow(columnIndex: 6, rowIndex: i + 1),
        TextCellValue(branchName),
      );
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

  void _showDeleteSchoolDialog(BuildContext context, School school) {
    showShadDialog(
      context: context,
      builder: (context) {
        final schoolId = school.schoolId;
        final schoolName = school.schoolName;
        return ShadDialog.alert(
          title: const Text('Peringatan'),
          description: Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Wrap(
              children: [
                Text('Apakah anda yakin akan menghapus data '),
                Text(
                  '$schoolName?',
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
                if (schoolId == null) return;
                context.read<SchoolBloc>().add(
                  SchoolEvent.deleteSchool(schoolId),
                );
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }

  void _showUpsertSchoolDialog({
    required BuildContext context,
    School? school,
  }) {
    showShadDialog(
      context: context,
      builder: (context) {
        return UpsertSchoolDialog(school: school);
      },
    );
  }
}
