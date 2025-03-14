import 'dart:convert';

import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:forui/forui.dart';
import 'package:forui_hooks/forui_hooks.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:pluto_grid_export/pluto_grid_export.dart' as pluto_grid_export;

class TestFormScreen extends HookWidget {
  TestFormScreen({super.key});

  late PlutoGridStateManager stateManager;

  List<PlutoColumn> columns = [
    PlutoColumn(
      title: 'No',
      field: 'no',
      type: PlutoColumnType.number(),
      enableContextMenu: false,
      enableDropToResize: false,
      suppressedAutoSize: true,
      width: 60,
    ),
    PlutoColumn(title: 'NIP', field: 'nip', type: PlutoColumnType.text()),
    PlutoColumn(
      title: 'Nama Lengkap',
      field: 'nama',
      type: PlutoColumnType.text(),
      suppressedAutoSize: true,
    ),
    PlutoColumn(title: 'Email', field: 'email', type: PlutoColumnType.text()),
    PlutoColumn(
      title: 'Jenis Kelamin',
      field: 'jenis_kelamin',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(title: 'Status', field: 'status', type: PlutoColumnType.text()),
    PlutoColumn(
      title: 'No Telp',
      field: 'no_telp',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Aksi',
      field: 'aksi',
      type: PlutoColumnType.text(),
      suppressedAutoSize: true,
      renderer: (rendererContext) {
        return Builder(
          builder: (context) {
            return Wrap(
              spacing: 4,
              children: [
                FButton.icon(
                  style: FButtonStyle.primary,
                  child: FIcon(FAssets.icons.arrowRight, size: 14),
                  onPress: () {
                    final cells = rendererContext.row.cells;
                    print(cells['no']?.value);
                    print(cells['no_telp']?.value);
                  },
                ),
                FButton.icon(
                  style: FButtonStyle.secondary,
                  child: FIcon(FAssets.icons.messageCircle, size: 14),
                  onPress: () {},
                ),
                FButton.icon(
                  style: FButtonStyle.outline,
                  child: FIcon(FAssets.icons.pen, size: 14),
                  onPress: () {
                    showAdaptiveDialog(
                      context: context,
                      builder:
                          (context) => FDialog.adaptive(
                            title: const Text('Are you absolutely sure?'),
                            body: const Text(
                              'This action cannot be undone. This will permanently delete your account and remove your data from our servers.',
                            ),
                            actions: [
                              FButton(
                                style: FButtonStyle.outline,
                                label: const Text('Cancel'),
                                onPress: () => Navigator.of(context).pop(),
                              ),
                              FButton(
                                label: const Text('Continue'),
                                onPress: () => Navigator.of(context).pop(),
                              ),
                            ],
                          ),
                    );
                  },
                ),
                FButton.icon(
                  style: FButtonStyle.destructive,
                  child: FIcon(FAssets.icons.trash, size: 14),
                  onPress: () {
                    showShadDialog(
                      context: context,
                      builder:
                          (_) => ShadDialog.alert(
                            title: const Text('Are you absolutely sure?'),
                            description: const Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Text(
                                'This action cannot be undone. This will permanently delete your account and remove your data from our servers.',
                              ),
                            ),
                            actions: [
                              ShadButton.outline(
                                child: const Text('Cancel'),
                                onPressed:
                                    () => Navigator.of(context).pop(false),
                              ),
                              ShadButton(
                                child: const Text('Continue'),
                                onPressed:
                                    () => Navigator.of(context).pop(true),
                              ),
                            ],
                          ),
                    );
                  },
                ),
              ],
            );
          },
        );
      },
    ),
  ];

  List<PlutoRow> rows = [
    PlutoRow(
      cells: {
        'no': PlutoCell(value: 1),
        'nip': PlutoCell(value: ''),
        'nama': PlutoCell(value: 'UUN WAHYUNI'),
        'email': PlutoCell(value: ''),
        'jenis_kelamin': PlutoCell(value: 'Laki-laki'),
        'status': PlutoCell(value: 'GTY'),
        'no_telp': PlutoCell(value: '081906676220'),
        'aksi': PlutoCell(value: ''),
      },
    ),
    PlutoRow(
      cells: {
        'no': PlutoCell(value: 2),
        'nip': PlutoCell(value: '19010001'),
        'nama': PlutoCell(value: 'A.Mujahid'),
        'email': PlutoCell(value: 'a1@gmail.com'),
        'jenis_kelamin': PlutoCell(value: 'Laki-laki'),
        'status': PlutoCell(value: 'Guru Tingkat 10'),
        'no_telp': PlutoCell(value: '081200000001'),
        'aksi': PlutoCell(value: ''),
      },
    ),
    PlutoRow(
      cells: {
        'no': PlutoCell(value: 3),
        'nip': PlutoCell(value: '19010005'),
        'nama': PlutoCell(value: 'Ahmad Suryadi, S.Kom'),
        'email': PlutoCell(value: 'a5@gmail.com'),
        'jenis_kelamin': PlutoCell(value: 'Laki-laki'),
        'status': PlutoCell(value: 'Guru Tingkat 11'),
        'no_telp': PlutoCell(value: '081200000001'),
        'aksi': PlutoCell(value: ''),
      },
    ),
    PlutoRow(
      cells: {
        'no': PlutoCell(value: 4),
        'nip': PlutoCell(value: '19010014'),
        'nama': PlutoCell(value: 'Asep Septiyadi, S.Kom'),
        'email': PlutoCell(value: 'a14@gmail.com'),
        'jenis_kelamin': PlutoCell(value: 'Laki-laki'),
        'status': PlutoCell(value: 'Guru Tingkat 10'),
        'no_telp': PlutoCell(value: '081200000001'),
        'aksi': PlutoCell(value: ''),
      },
    ),
    PlutoRow(
      cells: {
        'no': PlutoCell(value: 5),
        'nip': PlutoCell(value: '19010066'),
        'nama': PlutoCell(value: 'Wildan Kurnia Saputra'),
        'email': PlutoCell(value: 'a66@gmail.com'),
        'jenis_kelamin': PlutoCell(value: 'Laki-laki'),
        'status': PlutoCell(value: 'Guru Tingkat 10'),
        'no_telp': PlutoCell(value: '081200000001'),
        'aksi': PlutoCell(value: ''),
      },
    ),
    PlutoRow(
      cells: {
        'no': PlutoCell(value: 6),
        'nip': PlutoCell(value: '19010068'),
        'nama': PlutoCell(value: 'Yogi Suprayogi'),
        'email': PlutoCell(value: 'a68@gmail.com'),
        'jenis_kelamin': PlutoCell(value: 'Laki-laki'),
        'status': PlutoCell(value: 'Guru Tingkat 10'),
        'no_telp': PlutoCell(value: '081200000001'),
        'aksi': PlutoCell(value: ''),
      },
    ),
    PlutoRow(
      cells: {
        'no': PlutoCell(value: 7),
        'nip': PlutoCell(value: '1234567890'),
        'nama': PlutoCell(value: 'Susiana Kusumardhani'),
        'email': PlutoCell(value: 'cuxdesusi@gmail.com'),
        'jenis_kelamin': PlutoCell(value: 'Perempuan'),
        'status': PlutoCell(value: 'Staf Administrasi'),
        'no_telp': PlutoCell(value: '081906676220'),
        'aksi': PlutoCell(value: ''),
      },
    ),
    PlutoRow(
      cells: {
        'no': PlutoCell(value: 8),
        'nip': PlutoCell(value: '11111111'),
        'nama': PlutoCell(value: 'Novi Nurhayati Rahman'),
        'email': PlutoCell(value: 'a@gmail.com'),
        'jenis_kelamin': PlutoCell(value: 'Perempuan'),
        'status': PlutoCell(value: 'Staf Keuangan'),
        'no_telp': PlutoCell(value: '089988998899'),
        'aksi': PlutoCell(value: ''),
      },
    ),
    PlutoRow(
      cells: {
        'no': PlutoCell(value: 9),
        'nip': PlutoCell(value: '1010101010'),
        'nama': PlutoCell(value: 'User1'),
        'email': PlutoCell(value: 'user1@gmail.com'),
        'jenis_kelamin': PlutoCell(value: 'Laki-laki'),
        'status': PlutoCell(value: 'Guru Tingkat 5'),
        'no_telp': PlutoCell(value: '088899988899'),
        'aksi': PlutoCell(value: ''),
      },
    ),
    PlutoRow(
      cells: {
        'no': PlutoCell(value: 10),
        'nip': PlutoCell(value: '100000'),
        'nama': PlutoCell(value: 'Muslim Developer'),
        'email': PlutoCell(value: 'muslimdeveloper@rbs.sch.id'),
        'jenis_kelamin': PlutoCell(value: 'Laki-laki'),
        'status': PlutoCell(value: 'Staf Administrasi'),
        'no_telp': PlutoCell(value: ''),
        'aksi': PlutoCell(value: ''),
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = useFPopoverController();
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ShadCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildBreadcrumb(),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'DATA PEGAWAI',
                        style: context.shadTextTheme.h2,
                      ),
                    ),
                    if (ResponsiveBreakpoints.of(context).isMobile)
                      FPopoverMenu(
                        popoverController: controller,
                        menuAnchor: Alignment.topRight,
                        childAnchor: Alignment.bottomRight,
                        menu: [
                          FTileGroup(
                            children: [
                              FTile(
                                prefixIcon: FIcon(FAssets.icons.user),
                                title: const Text('Template Import Pegawai'),
                                onPress: () {},
                              ),
                              FTile(
                                prefixIcon: FIcon(FAssets.icons.import),
                                title: const Text('Import Data'),
                                onPress: () {},
                              ),
                              FTile(
                                prefixIcon: FIcon(FAssets.icons.plus),
                                title: const Text('Tambah Pegawai'),
                                onPress: () {},
                              ),
                              FTile(
                                prefixIcon: FIcon(FAssets.icons.circleAlert),
                                title: const Text('Status Pegawai'),
                                onPress: () {
                                  exportToCsv(stateManager);
                                },
                              ),
                              FTile(
                                prefixIcon: FIcon(FAssets.icons.download),
                                title: const Text('Download Data Pegawai'),
                                onPress: () {
                                  exportToPdf(stateManager);
                                },
                              ),
                            ],
                          ),
                        ],
                        child: IconButton(
                          icon: FIcon(FAssets.icons.ellipsis),
                          onPressed: controller.toggle,
                        ),
                      ),
                  ],
                ),
                if (ResponsiveBreakpoints.of(context).largerThan(MOBILE))
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Wrap(
                      runSpacing: 8,
                      children: [
                        ShadButton(
                          leading: Icon(Icons.download),
                          child: Text('Template Import Pegawai'),
                          onPressed: () {
                            defaultExportGridAsCSVFakeExcel(stateManager);
                          },
                        ),
                        ShadButton(
                          leading: Icon(Icons.import_export),
                          child: Text('Import Data'),
                        ),
                        ShadButton(
                          leading: Icon(Icons.add),
                          child: Text('Tambah Pegawai'),
                          onPressed: () {
                            defaultExportGridAsCSVCompatibleWithExcel(
                              stateManager,
                            );
                          },
                        ),
                        ShadButton(
                          leading: Icon(Icons.person),
                          child: Text('Status Pegawai'),
                          onPressed: () {
                            exportToCsv(stateManager);
                          },
                        ),
                        ShadButton(
                          leading: Icon(Icons.download),
                          child: Text('Download Data Pegawai'),
                          onPressed: () {
                            exportToPdf(stateManager);
                          },
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Theme(
            data: context.isDarkTheme ? ThemeData.dark() : ThemeData.light(),
            child: Container(
              height: 620,
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
              child: PlutoGrid(
                columns: columns,
                rows: rows,
                onLoaded: (PlutoGridOnLoadedEvent event) {
                  stateManager = event.stateManager;
                  event.stateManager.setShowColumnFilter(true);
                },
                onChanged: (PlutoGridOnChangedEvent event) {
                  print(event);
                },
                onSelected: (event) {
                  print(event);
                },
                mode: PlutoGridMode.readOnly,
                configuration:
                    context.isDarkTheme
                        ? PlutoGridConfiguration.dark(
                          localeText: const PlutoGridLocaleText(
                            filterContains: 'Cari...',
                          ),
                          columnSize: const PlutoGridColumnSizeConfig(
                            autoSizeMode: PlutoAutoSizeMode.scale,
                            resizeMode: PlutoResizeMode.pushAndPull,
                          ),
                          style: PlutoGridStyleConfig.dark(
                            activatedBorderColor: context.primaryColor,
                          ),
                        )
                        : PlutoGridConfiguration(
                          localeText: PlutoGridLocaleText(
                            filterContains: 'Cari...',
                          ),
                          columnSize: PlutoGridColumnSizeConfig(
                            autoSizeMode: PlutoAutoSizeMode.scale,
                            resizeMode: PlutoResizeMode.pushAndPull,
                          ),
                          style: PlutoGridStyleConfig(
                            activatedBorderColor: context.primaryColor,
                          ),
                        ),
                createFooter: (stateManager) {
                  stateManager.setPageSize(100, notify: false); // default 40
                  return PlutoPagination(stateManager);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Transform.translate(
      offset: Offset(-4, 0),
      child: FBreadcrumb(
        children: [
          FBreadcrumbItem(onPress: () {}, child: const Text('Beranda')),
          FBreadcrumbItem(current: true, child: const Text('Pegawai')),
        ],
      ),
    );
  }

  void exportToPdf(PlutoGridStateManager stateManager) async {
    var plutoGridPdfExport = pluto_grid_export.PlutoGridDefaultPdfExport(
      title: "Pluto Grid Sample pdf print",
      creator: "Pluto Grid Rocks!",
      format: pluto_grid_export.PdfPageFormat.a4.landscape,
    );

    await pluto_grid_export.Printing.sharePdf(
      bytes: await plutoGridPdfExport.export(stateManager),
      filename: plutoGridPdfExport.getFilename(),
    );
  }

  void exportToCsv(PlutoGridStateManager stateManager) async {
    String title = "pluto_grid_export";

    var exported = const Utf8Encoder().convert(
      pluto_grid_export.PlutoGridExport.exportCSV(stateManager),
    );

    // use file_saver from pub.dev
    await FileSaver.instance.saveFile(
      name: title,
      bytes: exported,
      mimeType: MimeType.csv,
      ext: '.csv',
    );
  }

  void defaultExportGridAsCSVCompatibleWithExcel(
    PlutoGridStateManager stateManager,
  ) async {
    String title = "pluto_grid_export";
    var exportCSV = pluto_grid_export.PlutoGridExport.exportCSV(stateManager);
    var exported = const Utf8Encoder().convert(
      // FIX Add starting \u{FEFF} / 0xEF, 0xBB, 0xBF
      // This allows open the file in Excel with proper character interpretation
      // See https://stackoverflow.com/a/155176
      '\u{FEFF}$exportCSV',
    );
    await FileSaver.instance.saveFile(
      name: title,
      bytes: exported,
      mimeType: MimeType.csv,
      ext: '.csv',
    );
  }

  void defaultExportGridAsCSVFakeExcel(
    PlutoGridStateManager stateManager,
  ) async {
    String title = "pluto_grid_export";
    var exportCSV = pluto_grid_export.PlutoGridExport.exportCSV(stateManager);
    var exported = const Utf8Encoder().convert(
      // FIX Add starting \u{FEFF} / 0xEF, 0xBB, 0xBF
      // This allows open the file in Excel with proper character interpretation
      // See https://stackoverflow.com/a/155176
      '\u{FEFF}$exportCSV',
    );
    await FileSaver.instance.saveFile(
      name: title,
      bytes: exported,
      mimeType: MimeType.microsoftExcel,
      ext: '.xls',
    );
  }
}
