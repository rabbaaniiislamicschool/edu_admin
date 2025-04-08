import 'package:edu_admin/core/components/input_form_field.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:edu_admin/features/branchs/presentation/manager/branch_bloc.dart';
import 'package:edu_admin/features/branchs/presentation/manager/branch_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../domain/entities/division.dart';
import '../manager/division_bloc.dart';
import '../manager/division_event.dart';
import '../manager/division_state.dart';

class UpsertDivisionDialog extends HookWidget {
  final Division? division;

  const UpsertDivisionDialog({super.key, this.division});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<ShadFormState>());
    final divisionName = useTextEditingController(
      text: division?.divisionName ?? '',
    );
    final isUpdate = division != null;
    final title = isUpdate ? 'Edit Divisi' : 'Tambah Divisi';

    useEffect(() {
      context.read<BranchBloc>().add(BranchEvent.fetchAllBranches());
      return null;
    }, []);

    return BlocConsumer<DivisionBloc, DivisionState>(
      listener: (_, state) {
        if (state.status == DivisionStatus.updateSuccess ||
            state.status == DivisionStatus.insertSuccess) {
          context.showSuccessMessage('Berhasil menyimpan data');
          context.read<DivisionBloc>().add(DivisionEvent.fetchAllDivisions());
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

                  final data = Division(
                    divisionId: division?.divisionId,
                    createdAt: division?.createdAt,
                    updatedAt: isUpdate ? 'now()' : null,
                    divisionName: divisionName.text,
                  );
                  if (isUpdate) {
                    return context.read<DivisionBloc>().add(
                      DivisionEvent.updateDivision(data),
                    );
                  }
                  context.read<DivisionBloc>().add(
                    DivisionEvent.createDivision(data),
                  );
                },
                leading:
                    state.status == DivisionStatus.loading
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

                InputFormField(
                  controller: divisionName,
                  labelText: 'Nama Divisi',
                  placeholderText: 'Nama Divisi',
                  leading: Icon(Icons.house, size: 20),
                  isRequired: true,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
