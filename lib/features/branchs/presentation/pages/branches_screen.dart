import 'dart:typed_data';
import 'package:edu_admin/core/routes/app_routes.dart';
import 'package:edu_admin/core/utils/custom_date_utils.dart';
import 'package:edu_admin/features/branchs/presentation/pages/upsert_branches_dialog.dart';
import 'package:edu_admin/features/foundations/domain/entities/foundation.dart';
import 'package:edu_admin/features/foundations/presentation/manager/foundation_bloc.dart';
import 'package:edu_admin/features/foundations/presentation/manager/foundation_event.dart';
import 'package:excel/excel.dart';
import 'package:file_picker/file_picker.dart';
import 'package:edu_admin/core/components/custom_pluto_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../foundations/presentation/manager/foundation_state.dart';
import '../../domain/entities/branch.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:file_saver/file_saver.dart';
import 'package:forui/forui.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:pluto_grid_export/pluto_grid_export.dart' as pluto_grid_export;
import 'package:url_launcher/url_launcher.dart';
import '../manager/branch_bloc.dart';
import '../manager/branch_event.dart';
import '../manager/branch_state.dart';
import 'detail_branch_dialog.dart';

class BranchesScreen extends HookWidget {
  const BranchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stateManager = useState<PlutoGridStateManager?>(null);
    final action = useState<String?>(null);

    useEffect(() {
      context.read<BranchBloc>().add(BranchEvent.fetchAllBranches());
      return null;
    }, []);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh:
            () async =>
                context.read<BranchBloc>().add(BranchEvent.fetchAllBranches()),
        child: BlocConsumer<BranchBloc, BranchState>(
          listener: (context, state) {
            if (state.status == BranchStatus.deleteSuccess) {
              context.showSuccessMessage('Berhasil menghapus data');
              context.read<BranchBloc>().add(BranchEvent.fetchAllBranches());
            }
            if (state.status == BranchStatus.importSuccess) {
              context.showSuccessMessage('Berhasil import data');
              context.read<BranchBloc>().add(BranchEvent.fetchAllBranches());
            }
            if (state.status == BranchStatus.failure &&
                state.errorMessage != null) {
              context.showErroMessage(state.errorMessage!);
            }
          },
          builder: (context, state) {
            final branches = state.branches ?? [];
            return BlocConsumer<FoundationBloc, FoundationState>(
              listener: (_, foundationState) async {
                final foundations = foundationState.foundations;
                final isSuccess =
                    foundations != null &&
                    foundationState.status == FoundationStatus.success;
                if (isSuccess && action.value == 'template') {
                  _generateImportTemplate(
                    'Data Template Import Cabang',
                    foundations,
                  );
                }
                if (isSuccess && action.value == 'import') {
                  final data = await _importExcelData(context, foundations);
                  if (!context.mounted || data.isEmpty) return;
                  context.read<BranchBloc>().add(
                    BranchEvent.createBranches(data),
                  );
                }
              },
              builder: (_, foundationState) {
                return CustomPlutoTable(
                  isLoading: state.status == BranchStatus.loading,
                  onLoaded: (manager) {
                    manager.autoFitColumn(context, manager.columns.last);
                    return stateManager.value = manager;
                  },
                  title: 'Cabang',
                  menus: [
                    CustomMenu(
                      title: 'Template Import Cabang',
                      icon: Icons.download,
                      isLoading:
                          foundationState.status == FoundationStatus.loading &&
                          action.value == 'template',
                      onTap: () {
                        action.value = 'template';
                        context.read<FoundationBloc>().add(
                          FoundationEvent.fetchFoundations(),
                        );
                      },
                    ),
                    CustomMenu(
                      title: 'Import data',
                      icon: Icons.upload,
                      isLoading:
                          foundationState.status == FoundationStatus.loading &&
                          action.value == 'import',
                      onTap: () async {
                        action.value = 'import';
                        context.read<FoundationBloc>().add(
                          FoundationEvent.fetchFoundations(),
                        );
                      },
                    ),
                    CustomMenu(
                      title: 'Tambah Cabang',
                      icon: Icons.add,
                      onTap: () async {
                        _showUpsertBranchDialog(context: context);
                      },
                    ),
                    CustomMenu(
                      title: 'Download Data Cabang',
                      icon: Icons.download,
                      onTap: () {
                        _generateDataBranches(branches, 'Data Export Cabang');
                      },
                    ),
                    CustomMenu(
                      title: 'Print',
                      icon: Icons.print,
                      onTap: () {
                        if (stateManager.value == null) return;
                        _printPdf(stateManager.value!, 'Data Cabang');
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
                                  DetailBranchDialog(branch: branches[index]),
                        );
                      },
                    ),
                    CustomAction(
                      title: 'Edit',
                      icon: FAssets.icons.pen,
                      style: FButtonStyle.outline,
                      onTap: (index) {
                        _showUpsertBranchDialog(
                          context: context,
                          branch: branches[index],
                        );
                      },
                    ),
                    CustomAction(
                      title: 'Hapus',
                      icon: FAssets.icons.trash,
                      style: FButtonStyle.destructive,
                      onTap: (index) {
                        _showDeleteBranchDialog(context, branches[index]);
                      },
                    ),
                  ],
                  columns: [
                    PlutoColumn(
                      title: 'Cabang',
                      field: 'branch_name',
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
                        final imageUrl =
                            branches[rendererContext.rowIdx].imageUrl;

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
                      branches.mapWithIndex((branch, index) {
                        return PlutoRow(
                          cells: {
                            'no': PlutoCell(value: '${index + 1}'), // Required
                            'action': PlutoCell(value: ''), // Required
                            'branch_name': PlutoCell(value: branch.branchName),
                            'address': PlutoCell(value: branch.address ?? '-'),
                            'phone_number': PlutoCell(
                              value: branch.phoneNumber ?? '-',
                            ),
                            'email': PlutoCell(value: branch.email ?? '-'),
                            'created_at': PlutoCell(
                              value: CustomDateUtils.formatStringDate(
                                '${branch.createdAt}',
                              ),
                            ),
                            'coordinate': PlutoCell(
                              value: '${branch.latitude},${branch.longitude}',
                            ),
                            'logo': PlutoCell(value: branch.imageUrl ?? '-'),
                          },
                        );
                      }).toList(),
                );
              },
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

  Future<List<Branch>> _importExcelData(
    BuildContext context,
    List<Foundation> foundations,
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

    final foundationMapping = {
      for (var item in foundations) item.foundationName: item.foundationId,
    };

    var excel = Excel.decodeBytes(bytes);
    List<Branch> branches = [];
    List<String> errors = [];

    var firstSheet = excel.tables.keys.first;
    var rows = excel.tables[firstSheet]?.rows ?? [];
    int requiredColumns = rows.isNotEmpty ? rows[0].length - 1 : 0;

    for (int i = 1; i < rows.length; i++) {
      var row =
          rows[i].map((cell) => cell?.value.toString().trim() ?? "").toList();

      if (row.length < requiredColumns || row.take(requiredColumns).every((cell) => cell.isEmpty)) {
        continue;
      }

      try {
        branches.add(Branch.fromExcelRow(row, foundationMapping));
      } on FormatException catch (e) {
        errors.add("Baris ${i + 1}: ${e.toString()}");
      }
    }

    if (errors.isNotEmpty && context.mounted) {
      final error = errors.join('\n');
      context.showErroMessage("Kesalahan saat import data: $error");
      return [];
    }
    return branches;
  }

  Future<void> _generateDataBranches(
    List<Branch> branches,
    String fileName,
  ) async {
    var excel = Excel.createExcel();
    var sheet = excel['Sheet1'];

    // Header
    sheet.appendRow([
      TextCellValue('ID'),
      TextCellValue('Nama Cabang'),
      TextCellValue('Alamat'),
      TextCellValue('Nomer Telepon'),
      TextCellValue('Email'),
      TextCellValue('Tanggal Dibuat'),
      TextCellValue('Tanggal Diperbarui'),
    ]);

    for (final branch in branches) {
      sheet.appendRow([
        TextCellValue(branch.branchId.toString()),
        TextCellValue(branch.branchName),
        TextCellValue(branch.address ?? ''),
        TextCellValue(branch.phoneNumber ?? ''),
        TextCellValue(branch.email ?? ''),
        // TextCellValue(branch.websiteUrl ?? ''),
        DateCellValue.fromDateTime(DateTime.parse(('${branch.createdAt}'))),
        DateCellValue.fromDateTime(DateTime.parse(('${branch.updatedAt}'))),
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

  Future<void> _generateImportTemplate(
    String fileName,
    List<Foundation> foundations,
  ) async {
    var excel = Excel.createExcel();
    var sheet = excel['Sheet1'];

    sheet.appendRow([
      TextCellValue('Yayasan (Harus diisi)'),
      TextCellValue('Nama Cabang (Harus diisi)'),
      TextCellValue('Alamat (Harus diisi)'),
      TextCellValue('Nomer Telepon (Harus diisi)'),
      TextCellValue('Email (Harus diisi)'),
      TextCellValue('Koordinat (Harus diisi)'),
      TextCellValue('Keterangan - Daftar Yayasan:'),
    ]);

    sheet.appendRow([
      TextCellValue('Rabbaanii Islamic School'),
      TextCellValue('Rabbaanii Cikarang'),
      TextCellValue(
        'Jl. Cimandiri 8 B RT 06/08 Graha Asri 17550, Jatireja, Kec. Cikarang Tim., Kabupaten Bekasi, Jawa Barat 17550',
      ),
      TextCellValue('085313642033'),
      TextCellValue('yayasanrabbaanii@gmail.com'),
      TextCellValue('-6.2848666, 107.1856459'),
    ]);

    for (int i = 0; i < foundations.length; i++) {
      final foundationName = foundations[i].foundationName;
      sheet.updateCell(
        CellIndex.indexByColumnRow(columnIndex: 6, rowIndex: i + 1),
        TextCellValue(foundationName),
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

  void _showDeleteBranchDialog(BuildContext context, Branch branch) {
    showShadDialog(
      context: context,
      builder: (context) {
        final branchId = branch.branchId;
        final branchName = branch.branchName;
        return ShadDialog.alert(
          title: const Text('Peringatan'),
          description: Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Wrap(
              children: [
                Text('Apakah anda yakin akan menghapus data '),
                Text(
                  '$branchName?',
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
                if (branchId == null) return;
                context.read<BranchBloc>().add(
                  BranchEvent.deleteBranch(branchId),
                );
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }

  void _showUpsertBranchDialog({
    required BuildContext context,
    Branch? branch,
  }) {
    showShadDialog(
      context: context,
      builder: (context) {
        return UpsertBranchDialog(branch: branch);
      },
    );
  }
}
