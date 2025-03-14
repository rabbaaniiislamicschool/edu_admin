import 'package:edu_admin/features/employees/presentation/manager/employee_bloc.dart';
import 'package:edu_admin/features/employees/presentation/manager/employee_event.dart';
import 'package:edu_admin/features/employees/presentation/manager/employee_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../di/di.dart';
import 'dart:convert';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:file_saver/file_saver.dart';
import 'package:forui/forui.dart';
import 'package:forui_hooks/forui_hooks.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:pluto_grid_export/pluto_grid_export.dart' as pluto_grid_export;

class EmployeesScreen extends HookWidget {
  const EmployeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useFPopoverController();
    final stateManager = useState<PlutoGridStateManager?>(null);
    final foundationBloc = useMemoized(() => getIt<EmployeeBloc>());

    useEffect(() {
      context.read<EmployeeBloc>().add(EmployeeEvent.fetchEmployees());
      return null;
    }, []);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh:
            () async => foundationBloc.add(EmployeeEvent.fetchEmployees()),
        child: BlocBuilder<EmployeeBloc, EmployeeState>(
          builder: (context, state) {
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
                child: Text('DATA PEGAWAI', style: context.shadTextTheme.h2),
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
          FBreadcrumbItem(current: true, child: const Text('Pegawai')),
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
      EmployeeState state,
      ) {
    final employees = state.employees ?? [];

    return Skeletonizer(
      enabled: state.status == EmployeeStatus.loading,
      child: Theme(
        data: context.isDarkTheme ? ThemeData.dark() : ThemeData.light(),
        child: Container(
          height: 620,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: PlutoGrid(
            columns: [
              PlutoColumn(
                title: 'No',
                field: 'no',
                type: PlutoColumnType.number(),
              ),
              PlutoColumn(
                title: 'NIP',
                field: 'id',
                type: PlutoColumnType.text(),
              ),
              PlutoColumn(
                title: 'Nama Lengkap',
                field: 'name',
                type: PlutoColumnType.text(),
                width: 200,
              ),
              PlutoColumn(
                title: 'Nomer Telepon',
                field: 'phone',
                type: PlutoColumnType.text(),
                width: 250,
              ),
              PlutoColumn(
                title: 'Jenis Kelamin',
                field: 'gender',
                type: PlutoColumnType.text(),
                width: 150,
              ),
              PlutoColumn(
                title: 'Status',
                field: 'status',
                type: PlutoColumnType.text(),
                width: 200,
              ),
              PlutoColumn(
                title: 'Aksi',
                field: 'action',
                type: PlutoColumnType.text(),
                width: 180,
              ),
            ],
            rows:
            employees.mapWithIndex((employee, index) => PlutoRow(
                cells: {
                  'no': PlutoCell(value: index + 1),
                  'id': PlutoCell(
                    value: employee.employeeNumberId,
                  ),
                  'name': PlutoCell(value: employee.employeeName ?? '-'),
                  'phone': PlutoCell(
                    value: 'employee.phoneNumber' ?? '-',
                  ),
                  'gender': PlutoCell(value: 'employee.email' ?? '-'),
                  'status': PlutoCell(value: 'employee.createdAt'),
                  'action': PlutoCell(value: 'employee.updateAt'),
                },
              )).toList(),
            onLoaded: (event) {
              stateManager.value = event.stateManager;
              event.stateManager.setShowColumnFilter(true);
              event.stateManager.autoFitColumn(context, event.stateManager.columns.first);
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

