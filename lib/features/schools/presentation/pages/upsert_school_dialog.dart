import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:edu_admin/core/components/input_form_field.dart';
import 'package:edu_admin/core/components/select_form_field.dart';
import 'package:edu_admin/core/model/upload_storage_model.dart';
import 'package:edu_admin/core/utils/string_utils.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:edu_admin/features/branchs/domain/entities/branch.dart';
import 'package:edu_admin/features/branchs/presentation/manager/branch_bloc.dart';
import 'package:edu_admin/features/branchs/presentation/manager/branch_event.dart';
import 'package:edu_admin/features/branchs/presentation/manager/branch_state.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../domain/entities/school.dart';
import '../manager/school_bloc.dart';
import '../manager/school_event.dart';
import '../manager/school_state.dart';
import 'package:url_launcher/url_launcher.dart';

class UpsertSchoolDialog extends HookWidget {
  final School? school;

  const UpsertSchoolDialog({super.key, this.school});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<ShadFormState>());
    final uploadSelected = useState<UploadStorage?>(null);
    final branchIdSelected = useState<int?>(school?.branchId);
    final fileName = useTextEditingController();
    final schoolName = useTextEditingController(text: school?.schoolName ?? '');
    final address = useTextEditingController(text: school?.address ?? '');
    final phoneNumber = useTextEditingController(
      text: school?.phoneNumber ?? '',
    );
    final email = useTextEditingController(text: school?.email ?? '');
    final coordinate = useTextEditingController(
      text:
          school?.latitude != null && school?.longitude != null
              ? '${school?.latitude}, ${school?.longitude}'
              : '',
    );

    final isUpdate = school != null;
    final title = isUpdate ? 'Edit Sekolah' : 'Tambah Sekolah';

    useEffect(() {
      context.read<BranchBloc>().add(BranchEvent.fetchAllBranches());
      return null;
    }, []);

    return BlocConsumer<SchoolBloc, SchoolState>(
      listener: (_, state) {
        if (state.status == SchoolStatus.updateSuccess ||
            state.status == SchoolStatus.insertSuccess) {
          context.showSuccessMessage('Berhasil menyimpan data');
          context.read<SchoolBloc>().add(SchoolEvent.fetchAllSchools());
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
                  final latitude = double.tryParse(
                    coordinate.text.split(',').first.trim(),
                  );
                  final longitude = double.tryParse(
                    coordinate.text.split(',').last.trim(),
                  );

                  final data = School(
                    schoolId: school?.schoolId,
                    createdAt: school?.createdAt,
                    updatedAt: isUpdate ? 'now()' : null,
                    address: address.text,
                    email: email.text,
                    latitude: latitude,
                    longitude: longitude,
                    imageUrl: school?.imageUrl,
                    schoolName: schoolName.text,
                    phoneNumber: phoneNumber.text,
                    uploadStorage: uploadSelected.value,
                    branchId: branchIdSelected.value!,
                  );
                  if (isUpdate) {
                    return context.read<SchoolBloc>().add(
                      SchoolEvent.updateSchool(data),
                    );
                  }
                  context.read<SchoolBloc>().add(
                    SchoolEvent.createSchool(data),
                  );
                },
                leading:
                    state.status == SchoolStatus.loading
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
                SizedBox(height: 8),
                BlocBuilder<BranchBloc, BranchState>(
                  builder: (_, state) {
                    final branches = state.branches ?? [];
                    return SelectFormField<Branch>(
                      title: 'Cabang',
                      isRequired: true,
                      placeholder: 'Pilih Cabang',
                      searchPlaceholder: 'Cari...',
                      items: branches,
                      itemLabel: (branch) => branch.branchName,
                      itemValue: (branch) => '${branch.branchId}',
                      onChanged: (value) {
                        branchIdSelected.value = int.parse('$value');
                        debugPrint('Branch ID: $value');
                      },
                      initialValue:
                          isUpdate ? '${branchIdSelected.value}' : null,
                    );
                  },
                ),
                SizedBox(height: 8),
                InputFormField(
                  controller: schoolName,
                  labelText: 'Nama Sekolah',
                  placeholderText: 'Nama Sekolah',
                  leading: Icon(Icons.house, size: 20),
                  isRequired: true,
                ),
                InputFormField(
                  controller: address,
                  labelText: 'Alamat',
                  placeholderText: 'Alamat',
                  leading: Icon(Icons.directions, size: 20),
                  isRequired: true,
                ),
                InputFormField(
                  controller: phoneNumber,
                  labelText: 'Nomor Telepon',
                  placeholderText: 'Nomor Telepon',
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
                  isRequired: true,
                  validator: StringUtils.emailValidator,
                  keyboardType: TextInputType.emailAddress,
                ),
                InputFormField(
                  controller: coordinate,
                  labelText: 'Koordinat Lokasi',
                  placeholderText: '-6.xxxxxx, 106.xxxxxx',
                  leading: Icon(Icons.location_city, size: 20),
                  validator: StringUtils.coordinateValidator,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShadButton.ghost(
                      onPressed: () {
                        final imageProvider =
                            Image.network(
                              "https://raw.githubusercontent.com/rabbaaniiislamicschool/Rabbaanii-Office/refs/heads/main/cara-mendapatkan-koordinat-lokasi.png",
                            ).image;
                        showImageViewer(context, imageProvider);
                      },
                      child: const Text('Tutorial Koordinat'),
                    ),
                    ShadButton.ghost(
                      onPressed: () async {
                        final Uri uri = Uri.parse(
                          'https://www.google.com/maps/search/',
                        );
                        final isAvailable = await canLaunchUrl(uri);
                        if (!isAvailable && context.mounted) {
                          context.showErroMessage(
                            'Gagal membuka aplikasi eksternal',
                          );
                        }
                        await launchUrl(
                          uri,
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      child: const Text('Buka Maps'),
                    ),
                  ],
                ),
                InputFormField(
                  controller: fileName,
                  labelText: 'Logo',
                  placeholderText: 'Pilih File',
                  leading: _buildImageSelected(
                    school?.imageUrl,
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
}
