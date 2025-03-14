import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../di/di.dart';
import '../manager/fee_type_bloc.dart';
import '../manager/fee_type_event.dart';
import '../manager/fee_type_state.dart';
import 'dart:convert';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:file_saver/file_saver.dart';
import 'package:forui/forui.dart';
import 'package:forui_hooks/forui_hooks.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:pluto_grid_export/pluto_grid_export.dart' as pluto_grid_export;

class FeeTypesScreen extends HookWidget {
  const FeeTypesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useFPopoverController();
    final stateManager = useState<PlutoGridStateManager?>(null);
    final feeTypeBloc = useMemoized(() => getIt<FeeTypeBloc>());

    useEffect(() {
      context.read<FeeTypeBloc>().add(FeeTypeEvent.fetchFeeTypes());
      return null;
    }, []);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh:
            () async => feeTypeBloc.add(FeeTypeEvent.fetchFeeTypes()),
        child: BlocBuilder<FeeTypeBloc, FeeTypeState>(
          builder: (context, state) {
            debugPrint('CHECKSTATE: $state');
            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildHeader(context, controller, stateManager),
                const SizedBox(height: 8),
                _buildDataTable(context, stateManager, state),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildHeader(
      BuildContext context,
      FPopoverController controller,
      ValueNotifier<PlutoGridStateManager?> stateManager,
      ) {
    return ShadCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildBreadcrumb(),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Text('DATA JENIS TAGIHAN', style: context.shadTextTheme.h2),
              ),
              if (ResponsiveBreakpoints.of(context).isMobile)
                _buildMobileMenu(controller, stateManager),
            ],
          ),
          if (ResponsiveBreakpoints.of(context).largerThan(MOBILE))
            _buildDesktopActions(stateManager),
        ],
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Transform.translate(
      offset: const Offset(-4, 0),
      child: FBreadcrumb(
        children: [
          FBreadcrumbItem(onPress: () {}, child: const Text('Beranda')),
          FBreadcrumbItem(current: true, child: const Text('Jenis Tagihan')),
        ],
      ),
    );
  }

  Widget _buildMobileMenu(
      FPopoverController controller,
      ValueNotifier<PlutoGridStateManager?> stateManager,
      ) {
    return FPopoverMenu(
      popoverController: controller,
      menuAnchor: Alignment.topRight,
      childAnchor: Alignment.bottomRight,
      menu: [FTileGroup(children: _buildMenuItems(stateManager))],
      child: IconButton(
        icon: FIcon(FAssets.icons.ellipsis),
        onPressed: controller.toggle,
      ),
    );
  }

  Widget _buildDesktopActions(
      ValueNotifier<PlutoGridStateManager?> stateManager,
      ) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Wrap(runSpacing: 8, children: _buildActionButtons(stateManager)),
    );
  }

  List<Widget> _buildActionButtons(
      ValueNotifier<PlutoGridStateManager?> stateManager,
      ) {
    return [
      ShadButton(
        leading: const Icon(Icons.download),
        child: const Text('Template Import'),
        onPressed: () {},
      ),
      ShadButton(
        leading: const Icon(Icons.import_export),
        child: const Text('Import Data'),
      ),
      ShadButton(
        leading: const Icon(Icons.add),
        child: const Text('Tambah Data'),
      ),
      ShadButton(
        leading: const Icon(Icons.person),
        child: const Text('Status'),
        onPressed: () => exportToCsv(stateManager.value!),
      ),
      ShadButton(
        leading: const Icon(Icons.download),
        child: const Text('Download Data'),
        onPressed: () => exportToPdf(stateManager.value!),
      ),
    ];
  }

  List<FTile> _buildMenuItems(
      ValueNotifier<PlutoGridStateManager?> stateManager,
      ) {
    return [
      FTile(
        prefixIcon: FIcon(FAssets.icons.user),
        title: const Text('Template Import'),
        onPress: () {},
      ),
      FTile(
        prefixIcon: FIcon(FAssets.icons.import),
        title: const Text('Import Data'),
        onPress: () {},
      ),
      FTile(
        prefixIcon: FIcon(FAssets.icons.plus),
        title: const Text('Tambah Data'),
        onPress: () {},
      ),
      FTile(
        prefixIcon: FIcon(FAssets.icons.circleAlert),
        title: const Text('Status'),
        onPress: () => exportToCsv(stateManager.value!),
      ),
      FTile(
        prefixIcon: FIcon(FAssets.icons.download),
        title: const Text('Download Data'),
        onPress: () => exportToPdf(stateManager.value!),
      ),
    ];
  }

  Widget _buildDataTable(
      BuildContext context,
      ValueNotifier<PlutoGridStateManager?> stateManager,
      FeeTypeState state,
      ) {
    final feeTypes = state.feeTypes ?? [];
    return Skeletonizer(
      enabled: state.status == FeeTypeStatus.loading,
      child: Theme(
        data: context.isDarkTheme ? ThemeData.dark() : ThemeData.light(),
        child: Container(
          height: 620,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: PlutoGrid(
            columns: [
              PlutoColumn(
                title: 'Fee Type ID',
                field: 'fee_type_id',
                type: PlutoColumnType.text(),
                hide: true,
              ),
              PlutoColumn(
                title: 'Nama Biaya',
                field: 'name',
                type: PlutoColumnType.text(),
              ),
              PlutoColumn(
                title: 'Deskripsi',
                field: 'description',
                type: PlutoColumnType.text(),
              ),
              PlutoColumn(
                title: 'Frekuensi',
                field: 'frequency',
                type: PlutoColumnType.text(),
              ),
              PlutoColumn(
                title: 'Tanggal Dibuat',
                field: 'created_at',
                type: PlutoColumnType.text(),
              ),
              PlutoColumn(
                title: 'Foundation ID',
                field: 'foundation_id',
                type: PlutoColumnType.text(),
              ),
              PlutoColumn(
                title: 'Tanggal Batas Waktu',
                field: 'deadline_date',
                type: PlutoColumnType.text(),
              ),
            ],
            rows: feeTypes.map((feeType) {
              return PlutoRow(
                cells: {
                  'fee_type_id': PlutoCell(value: feeType.feeTypeId),
                  'name': PlutoCell(value: feeType.name),
                  'description': PlutoCell(value: feeType.description ?? '-'),
                  'frequency': PlutoCell(value: feeType.frequency),
                  'created_at': PlutoCell(value: feeType.createdAt),
                  'foundation_id': PlutoCell(value: feeType.foundationId),
                  'deadline_date': PlutoCell(value: feeType.deadlineDate ?? '-'),
                },
              );
            }).toList(),
            onLoaded: (event) {
              stateManager.value = event.stateManager;
              event.stateManager.setShowColumnFilter(true);
            },
            onChanged: (event) => print(event),
            mode: PlutoGridMode.readOnly,
            configuration:
            context.isDarkTheme
                ? PlutoGridConfiguration.dark()
                : PlutoGridConfiguration(),
            createFooter: (stateManager) {
              stateManager.setPageSize(100, notify: false);
              return PlutoPagination(stateManager);
            },
          ),
        ),
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
    var exported = utf8.encode(
      pluto_grid_export.PlutoGridExport.exportCSV(stateManager),
    );
    await FileSaver.instance.saveFile(
      name: "pluto_grid_export",
      bytes: exported,
      mimeType: MimeType.csv,
      ext: '.csv',
    );
  }
}
