import 'package:edu_admin/core/components/input_form_field.dart';
import 'package:edu_admin/core/model/upload_storage_model.dart';
import 'package:edu_admin/core/utils/string_utils.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:edu_admin/features/foundations/presentation/manager/foundation_event.dart';
import 'package:edu_admin/features/foundations/presentation/manager/foundation_state.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../domain/entities/foundation.dart';
import '../manager/foundation_bloc.dart';
import 'package:image/image.dart' as img;

class UpsertFoundationDialog extends HookWidget {
  final Foundation? foundation;

  const UpsertFoundationDialog({super.key, this.foundation});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<ShadFormState>());
    final uploadSelected = useState<UploadStorage?>(null);

    final fileName = useTextEditingController();
    final foundationName = useTextEditingController(
      text: foundation?.foundationName ?? '',
    );
    final address = useTextEditingController(text: foundation?.address ?? '');
    final phoneNumber = useTextEditingController(
      text: foundation?.phoneNumber ?? '',
    );
    final email = useTextEditingController(text: foundation?.email ?? '');
    final merchantCode = useTextEditingController(
      text: foundation?.merchantCode ?? '',
    );
    final merchantKey = useTextEditingController(
      text: foundation?.merchantApiKey ?? '',
    );
    final websiteUrl = useTextEditingController(
      text: foundation?.websiteUrl ?? '',
    );

    final isUpdate = foundation != null;
    final title = isUpdate ? 'Tambah Yayasan' : 'Edit Yayasan';

    return BlocConsumer<FoundationBloc, FoundationState>(
      listener: (context, state) {
        if (state.status == FoundationStatus.updateSuccess ||
            state.status == FoundationStatus.insertSuccess) {
          context.showSuccessMessage('Berhasil menyimpan data');
          context.read<FoundationBloc>().add(
            FoundationEvent.fetchFoundations(),
          );
          Navigator.of(context).pop(true);
        }
      },
      builder: (context, state) {
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
                  final data = Foundation(
                    foundationId: foundation?.foundationId,
                    createdAt: foundation?.createdAt,
                    isAdmin: foundation?.isAdmin,
                    updatedAt: isUpdate ? 'now()' : null,
                    address: address.text,
                    email: email.text,
                    imageUrl: foundation?.imageUrl,
                    foundationName: foundationName.text,
                    merchantCode: merchantCode.text,
                    merchantApiKey: merchantKey.text,
                    phoneNumber: phoneNumber.text,
                    websiteUrl: websiteUrl.text,
                    uploadStorage: uploadSelected.value,
                  );
                  if (isUpdate) {
                    return context.read<FoundationBloc>().add(
                      FoundationEvent.updateFoundation(data),
                    );
                  }
                  context.read<FoundationBloc>().add(
                    FoundationEvent.createFoundation(data),
                  );
                },
                leading:
                    state.status == FoundationStatus.loading
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
                SizedBox(height: 20),
                InputFormField(
                  controller: foundationName,
                  labelText: 'Nama Yayasan',
                  placeholderText: 'Nama Yayasan',
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
                  controller: merchantCode,
                  labelText: 'Kode Merchant',
                  placeholderText: 'DSxxx',
                  leading: Icon(Icons.code, size: 20),
                ),
                InputFormField(
                  controller: merchantKey,
                  labelText: 'Kunci Merchant',
                  placeholderText: 'xxx',
                  leading: Icon(Icons.key, size: 20),
                ),
                InputFormField(
                  controller: websiteUrl,
                  labelText: 'Link Website',
                  placeholderText: 'https://example.sch.id',
                  leading: Icon(Icons.web, size: 20),
                ),
                InputFormField(
                  controller: fileName,
                  labelText: 'Logo',
                  placeholderText: 'Pilih File',
                  leading: _buildImageSelected(
                    foundation?.imageUrl,
                    uploadSelected.value?.bytes,
                  ),
                  isRequired: true,
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
    if (imageUrl?.isEmpty == true || imageUrl == null) {
      return Icon(Icons.photo, size: 20);
    }
    if (bytes != null) {
      return Image.memory(bytes, width: 56, height: 56, fit: BoxFit.fitWidth);
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
      minWidth:  isPng ? 512 : 1920,
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
