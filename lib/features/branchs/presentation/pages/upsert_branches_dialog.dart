import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:edu_admin/core/components/input_form_field.dart';
import 'package:edu_admin/core/model/upload_storage_model.dart';
import 'package:edu_admin/core/routes/app_routes.dart';
import 'package:edu_admin/core/utils/string_utils.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:edu_admin/features/foundations/domain/entities/foundation.dart';
import 'package:edu_admin/features/foundations/presentation/manager/foundation_bloc.dart';
import 'package:edu_admin/features/foundations/presentation/manager/foundation_event.dart';
import 'package:edu_admin/features/foundations/presentation/manager/foundation_state.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../domain/entities/branch.dart';
import '../manager/branch_bloc.dart';
import '../manager/branch_event.dart';
import '../manager/branch_state.dart';
import 'package:url_launcher/url_launcher.dart';

class UpsertBranchDialog extends HookWidget {
  final Branch? branch;

  const UpsertBranchDialog({super.key, this.branch});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<ShadFormState>());
    final uploadSelected = useState<UploadStorage?>(null);
    final foundationIdSelected = useState<String?>(null);
    final searchValue = useState<String>('');

    final foundationId = useTextEditingController();
    final fileName = useTextEditingController();
    final branchName = useTextEditingController(text: branch?.branchName ?? '');
    final address = useTextEditingController(text: branch?.address ?? '');
    final phoneNumber = useTextEditingController(
      text: branch?.phoneNumber ?? '',
    );
    final email = useTextEditingController(text: branch?.email ?? '');

    final isUpdate = branch != null;
    final title = isUpdate ? 'Tambah Cabang' : 'Edit Cabang';

    useEffect(() {
      context.read<FoundationBloc>().add(FoundationEvent.fetchFoundations());
      return null;
    }, []);

    return BlocConsumer<BranchBloc, BranchState>(
      listener: (_, state) {
        if (state.status == BranchStatus.updateSuccess ||
            state.status == BranchStatus.insertSuccess) {
          context.showSuccessMessage('Berhasil menyimpan data');
          context.read<BranchBloc>().add(BranchEvent.fetchAllBranches());
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
                  final data = Branch(
                    branchId: branch?.branchId,
                    createdAt: branch?.createdAt,
                    updatedAt: isUpdate ? 'now()' : null,
                    address: address.text,
                    email: email.text,
                    imageUrl: branch?.imageUrl,
                    branchName: branchName.text,
                    phoneNumber: phoneNumber.text,
                    uploadStorage: uploadSelected.value,
                    foundationId: foundationId.text,
                  );
                  if (isUpdate) {
                    return context.read<BranchBloc>().add(
                      BranchEvent.updateBranch(data),
                    );
                  }
                  context.read<BranchBloc>().add(
                    BranchEvent.createBranch(data),
                  );
                },
                leading:
                    state.status == BranchStatus.loading
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
                GestureDetector(
                  child: Image.network(
                    'https://raw.githubusercontent.com/rabbaaniiislamicschool/Rabbaanii-Office/refs/heads/main/cara-mendapatkan-koordinat-lokasi.png',
                    width: double.infinity,
                    height: 128,
                    fit: BoxFit.contain,
                  ),
                  onTap: () {
                    final imageProvider =
                        Image.network(
                          "https://raw.githubusercontent.com/rabbaaniiislamicschool/Rabbaanii-Office/refs/heads/main/cara-mendapatkan-koordinat-lokasi.png",
                        ).image;
                    showImageViewer(
                      context,
                      imageProvider,
                      onViewerDismissed: () {
                        print("dismissed");
                      },
                    );
                  },
                ),
                BlocBuilder<FoundationBloc, FoundationState>(
                  builder: (_, state) {
                    final foundations = state.foundations ?? [];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          children: [
                            Text(
                              'Yayasan',
                              style: context.shadTextTheme.small.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' * ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ShadSelect<String>.withSearch(
                                placeholder: const Text('Pilih yayasan...'),
                                onSearchChanged:
                                    (value) => searchValue.value = value,
                                searchPlaceholder: const Text('Cari...'),
                                searchInputLeading: Icon(Icons.add),
                                onChanged:
                                    (value) =>
                                        foundationIdSelected.value = value,
                                options: [
                                  if (foundations.isEmpty)
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 24,
                                      ),
                                      child: Text('Data tidak ditemukan'),
                                    ),
                                  ...foundations.map((foundation) {
                                    bool isVisible = foundation.foundationName
                                        .toLowerCase()
                                        .contains(
                                          searchValue.value.toLowerCase(),
                                        );

                                    return Offstage(
                                      offstage: !isVisible,
                                      // Jika tidak cocok, item tetap ada tetapi disembunyikan
                                      child: ShadOption(
                                        value: foundation.foundationId ?? '',
                                        child: Text(foundation.foundationName),
                                      ),
                                    );
                                  }),
                                ],
                                selectedOptionBuilder: (context, value) {
                                  final selectedFoundation = foundations
                                      .firstWhere(
                                        (f) => f.foundationId == value,
                                        orElse:
                                            () => Foundation(
                                              foundationName: "Tidak Ditemukan",
                                            ),
                                      );
                                  return Text(
                                    selectedFoundation.foundationName,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
                SizedBox(height: 8),
                InputFormField(
                  controller: branchName,
                  labelText: 'Nama Cabang',
                  placeholderText: 'Nama Cabang',
                  leading: Icon(Icons.house, size: 20),
                  isRequired: true,
                  onPressed: () async {
                    final Uri uri = Uri.parse(
                      'https://www.google.com/maps/search/',
                    );
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(
                        uri,
                        mode: LaunchMode.externalApplication,
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Could not launch URL")),
                      );
                    }
                  },
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
                  controller: fileName,
                  labelText: 'Logo',
                  placeholderText: 'Pilih File',
                  leading: _buildImageSelected(
                    branch?.imageUrl,
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
