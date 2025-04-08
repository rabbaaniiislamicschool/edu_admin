import 'package:edu_admin/core/components/input_form_field.dart';
import 'package:edu_admin/core/components/select_form_field.dart';
import 'package:edu_admin/core/model/upload_storage_model.dart';
import 'package:edu_admin/core/utils/custom_date_utils.dart';
import 'package:edu_admin/core/utils/string_extensions.dart';
import 'package:edu_admin/core/utils/string_utils.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:edu_admin/features/auth/domain/entities/user.dart';
import 'package:edu_admin/features/divisions/domain/entities/division.dart';
import 'package:edu_admin/features/divisions/presentation/manager/division_bloc.dart';
import 'package:edu_admin/features/divisions/presentation/manager/division_event.dart';
import 'package:edu_admin/features/divisions/presentation/manager/division_state.dart';
import 'package:edu_admin/features/employees/domain/entities/user_employee.dart';
import 'package:edu_admin/features/schools/domain/entities/school.dart';
import 'package:edu_admin/features/schools/presentation/manager/school_bloc.dart';
import 'package:edu_admin/features/schools/presentation/manager/school_event.dart';
import 'package:edu_admin/features/schools/presentation/manager/school_state.dart';
import 'package:file_picker/file_picker.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../domain/entities/employee.dart';
import '../manager/employee_bloc.dart';
import '../manager/employee_event.dart';
import '../manager/employee_state.dart';

class UpsertEmployeeDialog extends HookWidget {
  final Employee? employee;

  const UpsertEmployeeDialog({super.key, this.employee});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<ShadFormState>());

    final employeeName = useTextEditingController(
      text: employee?.employeeName ?? '',
    );
    final schoolIdSelected = useState<int?>(employee?.user?.schoolId);
    final email = useTextEditingController(text: employee?.user?.email ?? '');
    final phoneNumber = useTextEditingController(
      text: employee?.user?.phoneNumber.toLocalFormat() ?? '',
    );
    final genderSelected = useState<String?>(employee?.user?.gender);
    final birthPlace = useTextEditingController(
      text: employee?.user?.birthPlace ?? '',
    );
    final dob = useTextEditingController(
      text: CustomDateUtils.format(employee?.user?.dob) ?? '',
    );
    final dobSelected = useState<DateTime?>(
      DateTime.tryParse('${employee?.user?.dob}'),
    );
    final address = useTextEditingController(
      text: employee?.user?.address ?? '',
    );
    final uploadSelected = useState<UploadStorage?>(null);
    final employeeNumberId = useTextEditingController(
      text: employee?.employeeNumberId ?? '',
    );
    final divisionIdSelected = useState<int?>(employee?.divisionId);
    final hiredDate = useTextEditingController(
      text: CustomDateUtils.format(employee?.hiredDate) ?? '',
    );
    final hiredDateSelected = useState<DateTime?>(
      DateTime.tryParse('${employee?.hiredDate}'),
    );
    final leaveDate = useTextEditingController(
      text: CustomDateUtils.format(employee?.leaveDate) ?? '',
    );
    final leaveDateSelected = useState<DateTime?>(
      DateTime.tryParse('${employee?.leaveDate}'),
    );
    final status = useState<String?>(employee?.status);
    final isTeaching = useState<bool>(employee?.isTeaching == true);
    final isUpdate = employee != null;
    final fileName = useTextEditingController();
    final password = useTextEditingController();

    final title = isUpdate ? 'Edit Pegawai' : 'Tambah Pegawai';

    useEffect(() {
      context.read<DivisionBloc>().add(DivisionEvent.fetchAllDivisions());
      context.read<SchoolBloc>().add(SchoolEvent.fetchAllSchools());
      return null;
    }, []);

    return BlocConsumer<EmployeeBloc, EmployeeState>(
      listener: (_, state) {
        if (state.status == EmployeeStatus.updateSuccess ||
            state.status == EmployeeStatus.insertSuccess) {
          context.showSuccessMessage('Berhasil menyimpan data');
          context.read<EmployeeBloc>().add(EmployeeEvent.fetchEmployees());
          Navigator.of(context).pop(true);
        }
      },
      builder: (_, state) {
        return ShadForm(
          key: formKey,
          child: ShadDialog(
            title: Text(title, style: context.shadTextTheme.large),
            actions: [
              ShadButton.outline(
                child: const Text('Batal'),
                onPressed: () => Navigator.of(context).pop(false),
              ),
              ShadButton(
                onPressed: () {
                  if (!formKey.currentState!.saveAndValidate()) {
                    return;
                  }

                  final data = UserEmployee(
                    user: User(
                      schoolId: schoolIdSelected.value!,
                      fullName: employeeName.text,
                      email: email.text.isEmpty ? null : email.text,
                      phoneNumber: phoneNumber.text,
                      gender: genderSelected.value!,
                      dob: dobSelected.value!.toIso8601String(),
                      address: address.text.isEmpty ? null : address.text,
                      birthPlace: birthPlace.text,
                      userId: employee?.user?.userId,
                      createdAt: employee?.user?.createdAt,
                      imageUrl: employee?.user?.imageUrl,
                      uploadStrorage: uploadSelected.value,
                    ),
                    employee: Employee(
                      employeeNumberId: employeeNumberId.text,
                      divisionId: divisionIdSelected.value,
                      employeeName: employeeName.text,
                      hiredDate: hiredDateSelected.value?.toIso8601String(),
                      status: status.value,
                      isTeaching: isTeaching.value,
                      employeeId: employee?.employeeId,
                      createdAt: employee?.createdAt,
                      updatedAt: isUpdate ? 'now()' : employee?.updatedAt,
                      leaveDate: leaveDateSelected.value?.toIso8601String(),
                    ),
                  );
                  if (isUpdate) {
                    return context.read<EmployeeBloc>().add(
                      EmployeeEvent.updateUserEmployee(
                        data,
                        password.text.isEmpty ? null : password.text,
                      ),
                    );
                  }
                  context.read<EmployeeBloc>().add(
                    EmployeeEvent.createUserEmployee(data, password.text),
                  );
                },
                leading:
                    state.status == EmployeeStatus.loading
                        ? SizedBox.square(
                          dimension: 16,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: context.onPrimaryColor,
                          ),
                        )
                        : null,
                child: const Text('Simpan'),
              ),
            ],
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InputFormField(
                  controller: employeeNumberId,
                  labelText: 'NIP',
                  placeholderText: 'Nomor Induk Pegawai',
                  leading: Icon(Icons.numbers, size: 20),
                  isRequired: true,
                ),
                InputFormField(
                  controller: employeeName,
                  labelText: 'Nama Pegawai',
                  placeholderText: 'Nama Pegawai',
                  leading: Icon(Icons.house, size: 20),
                  isRequired: true,
                ),
                InputFormField(
                  controller: phoneNumber,
                  labelText: 'Nomor Telepon',
                  placeholderText: '08xxxxxxx',
                  leading: Icon(Icons.phone, size: 20),
                  isRequired: true,
                  validator: StringUtils.phoneValidator,
                  keyboardType: TextInputType.phone,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                InputFormField(
                  controller: email,
                  labelText: 'Email',
                  placeholderText: 'Email',
                  leading: Icon(Icons.email, size: 20),
                  validator:
                      (value) =>
                          StringUtils.emailValidator(value, isRequired: false),
                  keyboardType: TextInputType.emailAddress,
                ),
                SelectFormField<String>(
                  title: 'Jenis Kelamin',
                  isRequired: true,
                  placeholder: 'Pilih Jenis Kelamin',
                  searchPlaceholder: 'Cari...',
                  items: ['Laki-laki', 'Perempuan'],
                  itemLabel: (value) => value,
                  itemValue: (value) => value == 'Laki-laki' ? 'L' : 'P',
                  onChanged: (value) {
                    genderSelected.value = value;
                  },
                  initialValue: isUpdate ? '${genderSelected.value}' : null,
                ),
                InputFormField(
                  controller: birthPlace,
                  labelText: 'Tempat Lahir',
                  placeholderText: 'Nama Kota',
                  leading: Icon(Icons.place, size: 20),
                  isRequired: true,
                  keyboardType: TextInputType.text,
                ),
                InputFormField(
                  controller: dob,
                  labelText: 'Tanggal Lahir',
                  placeholderText: 'hari-bulan-tahun',
                  leading: Icon(Icons.today, size: 20),
                  isRequired: true,
                  readOnly: true,
                  keyboardType: TextInputType.datetime,
                  onPressed: () async {
                    _showDatePicker(context, dob, dobSelected);
                  },
                ),
                InputFormField(
                  controller: address,
                  labelText: 'Alamat',
                  placeholderText: 'Alamat',
                  leading: Icon(Icons.location_history, size: 20),
                  keyboardType: TextInputType.text,
                ),
                BlocBuilder<SchoolBloc, SchoolState>(
                  builder: (_, state) {
                    final items = state.schools ?? [];
                    return SelectFormField<School>(
                      title: 'Jenjang',
                      isRequired: true,
                      placeholder: 'Pilih Jenjang',
                      searchPlaceholder: 'Cari...',
                      items: items,
                      itemLabel: (item) => item.schoolName,
                      itemValue: (item) => '${item.schoolId}',
                      onChanged: (value) {
                        schoolIdSelected.value = int.parse('$value');
                      },
                      initialValue:
                          isUpdate ? '${schoolIdSelected.value}' : null,
                    );
                  },
                ),
                BlocBuilder<DivisionBloc, DivisionState>(
                  builder: (_, state) {
                    final items = state.divisions ?? [];
                    return SelectFormField<Division>(
                      title: 'Divisi',
                      isRequired: true,
                      placeholder: 'Pilih Divisi',
                      searchPlaceholder: 'Cari...',
                      items: items,
                      itemLabel: (item) => item.divisionName,
                      itemValue: (item) => '${item.divisionId}',
                      onChanged: (value) {
                        divisionIdSelected.value = int.parse('$value');
                      },
                      initialValue:
                          isUpdate ? '${divisionIdSelected.value}' : null,
                    );
                  },
                ),
                InputFormField(
                  controller: hiredDate,
                  labelText: 'Tanggal Bekerja',
                  placeholderText: 'Tanggal Bekerja',
                  leading: Icon(Icons.date_range, size: 20),
                  keyboardType: TextInputType.datetime,
                  readOnly: true,
                  onPressed: () async {
                    _showDatePicker(context, hiredDate, hiredDateSelected);
                  },
                ),
                InputFormField(
                  controller: leaveDate,
                  labelText: 'Tanggal Keluar Bekerja',
                  placeholderText: 'Tanggal Keluar Bekerja',
                  leading: Icon(Icons.calendar_month, size: 20),
                  keyboardType: TextInputType.datetime,
                  readOnly: true,
                  onPressed: () async {
                    _showDatePicker(context, leaveDate, leaveDateSelected);
                  },
                ),
                SelectFormField<String>(
                  title: 'Status',
                  placeholder: 'Pilih Status',
                  searchPlaceholder: 'Cari...',
                  items: ['Aktif', 'Tidak Aktif', 'Keluar', 'Cuti'],
                  itemLabel: (value) => value,
                  itemValue: (value) => value,
                  onChanged: (value) {
                    status.value = value;
                  },
                  initialValue: isUpdate ? '${status.value}' : 'Aktif',
                ),
                SelectFormField<String>(
                  title: 'Apakah Mengajar (Guru)?',
                  placeholder: 'Pilih',
                  searchPlaceholder: 'Cari...',
                  items: ['Ya', 'Tidak'],
                  itemLabel: (value) => value,
                  itemValue: (value) => value == 'Ya' ? 'true' : 'false',
                  onChanged: (value) {
                    isTeaching.value = bool.parse(value!);
                  },
                  initialValue: isUpdate ? '${isTeaching.value}' : 'false',
                ),
                InputFormField(
                  controller: fileName,
                  labelText: 'Foto Profil',
                  placeholderText: 'Pilih File',
                  leading: _buildImageSelected(
                    employee?.user?.imageUrl,
                    uploadSelected.value?.bytes,
                  ),
                  isRequired: false,
                  readOnly: true,
                  onPressed: () async {
                    final result = await _pickAndCompressImage();
                    if (result == null) return;
                    uploadSelected.value = result;
                    fileName.text = result.fileName;
                  },
                  onTrailingPressed: () {
                    fileName.clear();
                    uploadSelected.value = null;
                  },
                ),
                InputFormField(
                  controller: password,
                  labelText: isUpdate ? 'Reset Password' : 'Buat Password',
                  placeholderText: 'Password',
                  leading: Icon(Icons.password, size: 20),
                  keyboardType: TextInputType.visiblePassword,
                  isRequired: isUpdate ? false : true,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildImageSelected(String? imageUrl, Uint8List? bytes) {
    if (bytes != null) {
      return Image.memory(bytes, width: 56, height: 56, fit: BoxFit.fitWidth);
    }

    if (imageUrl?.isEmpty == true || imageUrl == null) {
      return Icon(Icons.photo, size: 20);
    }

    return Image.network(imageUrl, width: 56, height: 56, fit: BoxFit.fitWidth);
  }

  Future<UploadStorage?> _pickAndCompressImage({int quality = 30}) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowCompression: false,
    );

    if (result == null) return null;

    final file = result.files.single;
    final name = DateTime.now().millisecondsSinceEpoch.toString();
    final bytes = file.bytes;
    final fileExt = file.extension?.toLowerCase();

    if (bytes == null || fileExt == null) return null;

    final isPng = fileExt == 'png';

    Uint8List compressedBytes = await FlutterImageCompress.compressWithList(
      bytes,
      quality: quality,
      minWidth: isPng ? 512 : 1920,
      minHeight: isPng ? 512 : 1080,
      format: isPng ? CompressFormat.png : CompressFormat.jpeg,
    );

    return UploadStorage(
      fileName: '$name.$fileExt',
      bytes: compressedBytes,
      fileExt: fileExt,
    );
  }

  Future<void> _showDatePicker(
    BuildContext context,
    TextEditingController date,
    ValueNotifier<DateTime?> dateSelected,
  ) async {
    final picked = await showDatePicker(
      context: context,
      firstDate: DateTime(1945),
      lastDate: DateTime.now(),
      initialDate: dateSelected.value,
    );
    if (picked == null) return;
    dateSelected.value = picked;
    date.text = DateFormat('dd-MM-yyyy').format(picked);
  }
}
