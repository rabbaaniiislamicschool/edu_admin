import 'dart:typed_data';
import 'package:edu_admin/core/utils/string_extensions.dart';
import 'package:edu_admin/features/divisions/domain/entities/division.dart';
import 'package:edu_admin/features/divisions/presentation/manager/division_bloc.dart';
import 'package:edu_admin/features/employees/domain/entities/user_employee.dart';
import 'package:edu_admin/features/employees/presentation/pages/detail_employee_dialog.dart';
import 'package:edu_admin/features/employees/presentation/pages/upsert_employee_dialog.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:edu_admin/features/schools/presentation/manager/school_bloc.dart';
import 'package:excel/excel.dart';
import 'package:file_picker/file_picker.dart';
import 'package:edu_admin/core/components/custom_pluto_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../domain/entities/employee.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:file_saver/file_saver.dart';
import 'package:forui/forui.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:pluto_grid_export/pluto_grid_export.dart' as pluto_grid_export;
import '../manager/employee_bloc.dart';
import '../manager/employee_event.dart';
import '../manager/employee_state.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart';
import 'package:pdf/widgets.dart' as pw;

class EmployeesScreen extends HookWidget {
  const EmployeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stateManager = useState<PlutoGridStateManager?>(null);
    final defaultPassword = useTextEditingController();

    useEffect(() {
      context.read<EmployeeBloc>().add(EmployeeEvent.fetchEmployees());
      return null;
    }, []);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh:
            () async => context.read<EmployeeBloc>().add(
              EmployeeEvent.fetchEmployees(),
            ),
        child: BlocConsumer<EmployeeBloc, EmployeeState>(
          listener: (context, state) {
            if (state.status == EmployeeStatus.deleteSuccess) {
              context.showSuccessMessage('Berhasil menghapus data');
              context.read<EmployeeBloc>().add(EmployeeEvent.fetchEmployees());
            }
            if (state.status == EmployeeStatus.importSuccess) {
              context.showSuccessMessage('Berhasil import data');
              context.read<EmployeeBloc>().add(EmployeeEvent.fetchEmployees());
            }
            if (state.status == EmployeeStatus.failure &&
                state.errorMessage != null) {
              context.showErroMessage(state.errorMessage!);
            }
          },
          builder: (context, state) {
            final employees = state.employees ?? [];
            return CustomPlutoTable(
              isLoading: state.status == EmployeeStatus.loading,
              onLoaded: (manager) {
                manager.autoFitColumn(context, manager.columns.last);
                return stateManager.value = manager;
              },
              title: 'Pegawai',
              menus: [
                CustomMenu(
                  title: 'Template Import Pegawai',
                  icon: Icons.download,
                  onTap: () async {
                    exportExcelWithValidation(
                      context,
                      'Data Template Import Pegawai',
                    );
                    // _importExcelData(
                    //   context,
                    //   'Data Template Import Pegawai',
                    // );
                  },
                ),
                CustomMenu(
                  title: 'Import data',
                  icon: Icons.upload,
                  onTap: () async {
                    final data = await _importExcelData(context);
                    if (!context.mounted || data.isEmpty) return;
                    context.read<EmployeeBloc>().add(
                      EmployeeEvent.createUserEmployees(
                        data,
                        defaultPassword.text,
                      ),
                    );
                  },
                ),
                CustomMenu(
                  title: 'Tambah Pegawai',
                  icon: Icons.add,
                  onTap: () async {
                    _showUpsertEmployeeDialog(context: context, employee: null);
                  },
                ),
                CustomMenu(
                  title: 'Download Data Pegawai',
                  icon: Icons.download,
                  onTap: () {
                    exportEmployeesToExcel(
                      context,
                      employees,
                      'Export Data Pegawai',
                    );
                  },
                ),
                CustomMenu(
                  title: 'Print',
                  icon: Icons.print,
                  onTap: () {
                    if (stateManager.value == null) return;
                    // _printPdf(stateManager.value!, 'Data Pegawai');
                    exportUserEmployeesToPdf(employees);
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
                      builder: (context) {
                        return DetailEmployeeDialog(employee: employees[index]);
                      },
                    );
                  },
                ),
                CustomAction(
                  title: 'Edit',
                  icon: FAssets.icons.pen,
                  style: FButtonStyle.outline,
                  onTap: (index) {
                    _showUpsertEmployeeDialog(
                      context: context,
                      employee: employees[index],
                    );
                  },
                ),
                CustomAction(
                  title: 'Hapus',
                  icon: FAssets.icons.trash,
                  style: FButtonStyle.destructive,
                  onTap: (index) {
                    _showDeleteEmployeeDialog(context, employees[index]);
                  },
                ),
              ],
              columns: [
                PlutoColumn(
                  title: 'NIP',
                  field: 'employee_id',
                  type: PlutoColumnType.text(),
                ),
                PlutoColumn(
                  title: 'Nama Lengkap',
                  field: 'employee_name',
                  type: PlutoColumnType.text(),
                  suppressedAutoSize: true,
                ),
                PlutoColumn(
                  title: 'Nomor Telepon',
                  field: 'phone_number',
                  type: PlutoColumnType.text(),
                ),
                PlutoColumn(
                  title: 'Jenjang',
                  field: 'school',
                  type: PlutoColumnType.text(),
                ),
                PlutoColumn(
                  title: 'Jenis Kelamin',
                  field: 'gender',
                  type: PlutoColumnType.text(),
                ),
                PlutoColumn(
                  title: 'Divisi',
                  field: 'division',
                  type: PlutoColumnType.text(),
                ),
              ],
              rows:
                  employees.mapWithIndex((employee, index) {
                    return PlutoRow(
                      cells: {
                        'no': PlutoCell(value: '${index + 1}'), // Required
                        'action': PlutoCell(value: ''), // Required
                        'employee_id': PlutoCell(
                          value: employee.employeeNumberId,
                        ),
                        'employee_name': PlutoCell(
                          value: employee.employeeName,
                        ),
                        'phone_number': PlutoCell(
                          value:
                              employee.user?.phoneNumber.toLocalFormat() ?? '-',
                        ),
                        'school': PlutoCell(
                          value: employee.user?.school?.schoolName ?? '-',
                        ),
                        'gender': PlutoCell(
                          value: _getGenderName(employee.user?.gender),
                        ),
                        'division': PlutoCell(
                          value: employee.division?.divisionName ?? '-',
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

  Future<void> exportExcelWithValidation(
    BuildContext context,
    String fileName,
  ) async {
    final schoolsFuture = context.read<SchoolBloc>().fetchAllSchools();
    final divisionsFuture = context.read<DivisionBloc>().fetchAllDivisions();
    final (fetchSchools, fetchDivisions) =
        await (schoolsFuture, divisionsFuture).wait;

    final schools = fetchSchools.toNullable() ?? [];
    final divisions = fetchDivisions.toNullable() ?? [];

    final workbook = Workbook();
    final sheet = workbook.worksheets[0];
    sheet.name = 'Sheet1';

    // Header
    final headers = [
      'NIP (Harus diisi)',
      'Nama Pegawai (Harus diisi)',
      'Jenjang (Harus diisi)',
      'Nomer Telepon (Harus diisi)',
      'Jenis Kelamin (Harus diisi: L/P)',
      'Tempat Lahir (Harus diisi)',
      'Tanggal Lahir (Harus diisi)',
      'Email',
      'Alamat',
      'Divisi',
      'Tanggal Bekerja',
      'Status (Aktif, Tidak Aktif, Keluar, Cuti)',
      'Apakah Mengajar? (Ya/Tidak)',
    ];

    for (int i = 0; i < headers.length; i++) {
      final cell = sheet.getRangeByIndex(1, i + 1);
      cell.setText(headers[i]);
      cell.cellStyle.bold = true;
      cell.cellStyle.fontSize = 12;
      cell.cellStyle.hAlign = HAlignType.center;
      cell.cellStyle.backColor = '#D9D9D9';
    }

    final data = [
      '09021050',
      'Nuggy Nugraha',
      schools.firstOrNull?.schoolName ?? '',
      '085778777740',
      'L',
      'Bandung',
      '08-11-1997',
      'testing@gmail.com',
      'Jl. Contoh Alamat, RT.001/RW.014',
      divisions.firstOrNull?.divisionName ?? '',
      '22-07-2022',
      'Aktif',
      'Ya',
    ];
    for (int i = 0; i < data.length; i++) {
      sheet.getRangeByIndex(2, i + 1).setText(data[i]);
      sheet.autoFitColumn(i + 1);
    }

    // List sekolah
    final schoolNames =
        schools.map((s) => s.schoolName).where((s) => s.isNotEmpty).toList();
    final divisionNames =
        divisions
            .map((d) => d.divisionName)
            .where((d) => d.isNotEmpty)
            .toList();

    final employeeIdRange = sheet.getRangeByName('A2:A1000');
    employeeIdRange.numberFormat = '@';

    final schoolValidationRange = sheet.getRangeByName('C2:C1000');
    final schoolValidation = schoolValidationRange.dataValidation;
    schoolValidation.listOfValues = schoolNames;
    schoolValidation.promptBoxText = 'Pilih jenjang dari daftar';
    schoolValidation.showPromptBox = true;
    schoolValidation.showErrorBox = true;
    schoolValidation.errorBoxText = 'Hanya bisa pilih dari daftar';

    final phoneRange = sheet.getRangeByName('D2:D1000');
    phoneRange.numberFormat = '@';

    // Jenis Kelamin - Kolom E (5)
    final genderValidationRange = sheet.getRangeByName('E2:E1000');
    final genderValidation = genderValidationRange.dataValidation;
    genderValidation.listOfValues = ['L', 'P'];
    genderValidation.promptBoxText = 'Pilih jenis kelamin';
    genderValidation.showPromptBox = true;
    genderValidation.errorBoxText = 'Pilih hanya L atau P';
    genderValidation.showErrorBox = true;

    final birthDateRange = sheet.getRangeByName('G2:G1000');
    birthDateRange.numberFormat = 'dd-MM-yyyy';
    final birthDateRangeValidation = birthDateRange.dataValidation;
    birthDateRangeValidation.allowType = ExcelDataValidationType.date;
    birthDateRangeValidation.promptBoxText =
        'Masukkan tanggal lahir (dd-MM-yyyy)';
    birthDateRangeValidation.showPromptBox = true;
    birthDateRangeValidation.showErrorBox = true;
    birthDateRangeValidation.errorBoxText = 'Isi dengan tanggal yang valid';
    birthDateRangeValidation.errorBoxTitle = 'Format Salah';

    // Set validation for column J (index 10) - Divisi
    final divisionValidationRange = sheet.getRangeByName('J2:J1000');
    final divisionValidation = divisionValidationRange.dataValidation;
    divisionValidation.listOfValues = divisionNames;
    divisionValidation.promptBoxText = 'Pilih divisi dari daftar';
    divisionValidation.showPromptBox = true;
    divisionValidation.showErrorBox = true;
    divisionValidation.errorBoxText = 'Hanya bisa pilih dari daftar';

    final workDateRange = sheet.getRangeByName('K2:K1000');
    workDateRange.numberFormat = 'dd-mm-yyyy';
    final workDateRangeValidation = workDateRange.dataValidation;
    workDateRangeValidation.allowType = ExcelDataValidationType.date;
    workDateRangeValidation.promptBoxText =
        'Masukkan tanggal bekerja (dd-MM-yyyy)';
    workDateRangeValidation.showPromptBox = true;
    workDateRangeValidation.showErrorBox = true;
    workDateRangeValidation.errorBoxText = 'Isi dengan tanggal yang valid';
    workDateRangeValidation.errorBoxTitle = 'Format Salah';

    // Status - Kolom L (12)
    final statusValidationRange = sheet.getRangeByName('L2:L1000');
    final statusValidation = statusValidationRange.dataValidation;
    statusValidation.listOfValues = ['Aktif', 'Tidak Aktif', 'Keluar', 'Cuti'];
    statusValidation.promptBoxText = 'Pilih status pegawai';
    statusValidation.showPromptBox = true;
    statusValidation.errorBoxText = 'Pilih hanya dari daftar status';
    statusValidation.showErrorBox = true;

    // Apakah Mengajar - Kolom M (13)
    final teachValidationRange = sheet.getRangeByName('M2:M1000');
    final teachValidation = teachValidationRange.dataValidation;
    teachValidation.listOfValues = ['Ya', 'Tidak'];
    teachValidation.promptBoxText = 'Apakah pegawai mengajar?';
    teachValidation.showPromptBox = true;
    teachValidation.errorBoxText = 'Pilih Ya atau Tidak';
    teachValidation.showErrorBox = true;

    // Simpan file
    final List<int> bytes = workbook.saveAsStream();
    workbook.dispose();

    final Uint8List uint8ListBytes = Uint8List.fromList(bytes);

    await FileSaver.instance.saveFile(
      name: fileName,
      bytes: uint8ListBytes,
      ext: 'xlsx',
      mimeType: MimeType.microsoftExcel,
    );
  }

  Future<List<UserEmployee>> _importExcelData(BuildContext context) async {
    final schoolsFuture = context.read<SchoolBloc>().fetchAllSchools();
    final divisionsFuture = context.read<DivisionBloc>().fetchAllDivisions();

    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['xlsx', 'xls'],
    );

    if (result == null) return [];

    final bytes = result.files.single.bytes;
    if (bytes == null) return [];

    final (fetchSchools, fetchDivisions) =
        await (schoolsFuture, divisionsFuture).wait;

    final schools = fetchSchools.toNullable() ?? [];
    final divisions = fetchDivisions.toNullable() ?? [];

    final schoolMapping = {
      for (var item in schools) item.schoolName.trim(): item.schoolId,
    };

    final divisionMapping = {
      for (var item in divisions) item.divisionName.trim(): item.divisionId,
    };

    final excel = Excel.decodeBytes(bytes);
    final firstSheet = excel.tables.keys.first;
    final rows = excel.tables[firstSheet]?.rows ?? [];

    if (rows.length <= 1) return [];

    List<UserEmployee> employees = [];
    List<String> errors = [];

    for (int i = 1; i < rows.length; i++) {
      final row =
          rows[i].map((cell) => cell?.value?.toString().trim() ?? '').toList();

      if (row.every((v) => v.isEmpty)) continue;

      try {
        final employee = UserEmployee.fromExcelRow(
          row,
          divisionMapping,
          schoolMapping,
        );
        employees.add(employee);
      } on FormatException catch (e) {
        errors.add('Baris ${i + 1}: ${e.message}');
      }
    }

    if (errors.isNotEmpty && context.mounted) {
      context.showErroMessage("Gagal import data:\n${errors.join('\n')}");
      return [];
    }

    return employees;
  }

  Future<void> exportEmployeesToExcel(
    BuildContext context,
    List<Employee> employees,
    String fileName,
  ) async {
    final workbook = Workbook();
    final sheet = workbook.worksheets[0];

    // Header
    final headers = [
      'NIP',
      'Nama Pegawai',
      'Email',
      'Nomor Telepon',
      'Jenis Kelamin',
      'Tempat Lahir',
      'Tanggal Lahir',
      'Alamat',
      'Divisi',
      'Tanggal Bekerja',
      'Status',
      'Apakah Mengajar',
    ];

    for (int i = 0; i < headers.length; i++) {
      final cell = sheet.getRangeByIndex(1, i + 1);
      cell.setText(headers[i]);
      cell.cellStyle.bold = true;
      cell.cellStyle.hAlign = HAlignType.center;
      cell.cellStyle.backColor = '#D9D9D9';
    }

    // Data Rows
    for (int i = 0; i < employees.length; i++) {
      final emp = employees[i];
      final rowIndex = i + 2;

      final phone = emp.user?.phoneNumber.toLocalFormat() ?? '';

      sheet.getRangeByIndex(rowIndex, 1).setText(emp.employeeNumberId);
      sheet.getRangeByIndex(rowIndex, 2).setText(emp.user?.fullName);
      sheet.getRangeByIndex(rowIndex, 3).setText(emp.user?.email ?? '');
      sheet.getRangeByIndex(rowIndex, 4).setText(phone);
      sheet.getRangeByIndex(rowIndex, 5).setText(emp.user?.gender);
      sheet.getRangeByIndex(rowIndex, 6).setText(emp.user?.birthPlace);
      sheet.getRangeByIndex(rowIndex, 7).setText(emp.user?.dob);
      sheet.getRangeByIndex(rowIndex, 8).setText(emp.user?.address ?? '');
      sheet
          .getRangeByIndex(rowIndex, 9)
          .setText(emp.division?.divisionName ?? '');
      sheet.getRangeByIndex(rowIndex, 10).setText(emp.hiredDate ?? '');
      sheet.getRangeByIndex(rowIndex, 11).setText(emp.status ?? '');
      sheet
          .getRangeByIndex(rowIndex, 12)
          .setText(emp.isTeaching == true ? 'Ya' : 'Tidak');
    }

    // Autofit dan formatting
    for (int i = 1; i <= headers.length; i++) {
      sheet.autoFitColumn(i);
    }

    // Simpan sebagai stream dan export
    final List<int> bytes = workbook.saveAsStream();
    workbook.dispose();

    final Uint8List data = Uint8List.fromList(bytes);
    await FileSaver.instance.saveFile(
      name: fileName,
      bytes: data,
      ext: 'xlsx',
      mimeType: MimeType.microsoftExcel,
    );
  }

  Future<void> exportUserEmployeesToPdf(List<Employee> employees) async {
    final pdf = pw.Document();

    final headers = [
      'NIP',
      'Nama',
      'Telepon',
      'Gender',
      'Tempat Lahir',
      'Tanggal Lahir',
      'Email',
      'Alamat',
      'Divisi',
      'Tanggal Bekerja',
      'Status',
      'Mengajar',
    ];

    final data =
        employees.map((e) {
          return [
            e.employeeNumberId,
            e.employeeName,
            e.user?.phoneNumber.toLocalFormat() ?? '',
            e.user?.gender,
            e.user?.birthPlace,
            e.user?.dob,
            e.user?.email ?? '',
            e.user?.address ?? '',
            e.division?.divisionName ?? '',
            e.hiredDate ?? '',
            e.status ?? '',
            e.isTeaching == true ? 'Ya' : 'Tidak',
          ];
        }).toList();

    pdf.addPage(
      pw.Page(
        pageFormat: pluto_grid_export.PdfPageFormat.a4.landscape,
        build: (context) {
          return pw.TableHelper.fromTextArray(
            headers: headers,
            data: data,
            border: pw.TableBorder.all(),
            headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold),
            headerDecoration: pw.BoxDecoration(
              color: pluto_grid_export.PdfColor.fromInt(0xFFD9D9D9),
            ),
            headerAlignment: pw.Alignment.center,
            cellAlignment: pw.Alignment.centerLeft,
            cellStyle: const pw.TextStyle(fontSize: 10),
          );
        },
      ),
    );

    await pluto_grid_export.Printing.layoutPdf(
      onLayout: (pluto_grid_export.PdfPageFormat format) async => pdf.save(),
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

  void _showDeleteEmployeeDialog(BuildContext context, Employee employee) {
    showShadDialog(
      context: context,
      builder: (context) {
        final employeeId = employee.employeeId;
        final employeeName = employee.employeeName;
        return ShadDialog.alert(
          title: const Text('Peringatan'),
          description: Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Wrap(
              children: [
                Text('Apakah anda yakin akan menghapus data '),
                Text(
                  '$employeeName?',
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
                if (employeeId == null) return;
                context.read<EmployeeBloc>().add(
                  EmployeeEvent.deleteEmployee(employeeId),
                );
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }

  void _showUpsertEmployeeDialog({
    required BuildContext context,
    Employee? employee,
  }) {
    showShadDialog(
      context: context,
      builder: (context) {
        return UpsertEmployeeDialog(employee: employee);
      },
    );
  }

  String _getGenderName(String? gender) {
    final isMale = gender == 'L';
    return isMale ? 'Laki-laki' : 'Perempuan';
  }
}
