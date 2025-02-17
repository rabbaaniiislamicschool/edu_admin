import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:edu_admin/core/routes/nested_routes.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:edu_admin/features/forget_password/presentation/manager/password_bloc.dart';
import 'package:edu_admin/features/forget_password/presentation/manager/password_event.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../manager/password_state.dart';

class ForgetPasswordScreen extends HookWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<ShadFormState>());
    final visiblePassword = useState<bool>(false);
    final dobSelected = useState<DateTime?>(null);
    final studentNumberId = useTextEditingController();
    final dob = useTextEditingController();
    final password = useTextEditingController();
    final sm = context.breakpoint >= ShadTheme.of(context).breakpoints.sm;


    return Container(
      color: context.backgroundColor,
      child: Center(
        child: SizedBox(
          width: 1024,
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  LoginRoute().pushReplacement(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
              title: Text(
                'Lupa Password',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            ),
            body: BlocConsumer<PasswordBloc, PasswordState>(
              listener: (context, state) {
                if (state.errorMessage != null) {
                  context.showMessage(state.errorMessage!);
                  return;
                }
                if (state.updatedUser == null) return;
                context.showMessage('Berhasil memperbarui password');
                LoginRoute().pushReplacement(context);
              },
              builder: (context, state) {
                return ShadForm(
                  key: formKey,
                  child: ListView(
                    padding: EdgeInsets.all(16),
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.info_rounded,
                              color: context.primaryColor,
                              size: 40,
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Untuk bisa memperbarui password silahkan masukkan data berikut.",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      ShadInputFormField(
                        id: 'studentId',
                        label: Text(
                          'NIS',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        validator: (v) {
                          if (v.isEmpty) return 'NIS tidak boleh kosong';
                          return null;
                        },
                        placeholder: Text('Nomor Induk Siswa'),
                        keyboardType: TextInputType.number,
                        controller: studentNumberId,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        prefix: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.school,
                            size: 20,
                            color: context.onBackgroundColor,
                          ),
                        ),
                        suffix: ShadButton(
                          width: 24,
                          height: 24,
                          padding: EdgeInsets.zero,
                          decoration: const ShadDecoration(
                            secondaryBorder: ShadBorder.none,
                            secondaryFocusedBorder: ShadBorder.none,
                          ),
                          onPressed: () {
                            studentNumberId.clear();
                          },
                          icon: Icon(
                            Icons.clear,
                            size: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ShadInputFormField(
                        id: 'bod',
                        label: Text(
                          'Tanggal Lahir',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        validator: (v) {
                          if (v.isEmpty || dobSelected.value == null) {
                            return 'Tanggal lahir tidak boleh kosong';
                          }
                          return null;
                        },
                        onPressed: () async {
                          final dateSelected = await showDatePicker(
                            context: context,
                            firstDate: DateTime(1990),
                            lastDate: DateTime(2100),
                            initialDate: dobSelected.value ?? DateTime(2015),
                          );
                          if (dateSelected == null) return;
                          dobSelected.value = dateSelected;
                          dob.text =
                              DateFormat('d MMMM yyyy', 'id').format(dateSelected);
                        },
                        placeholder: Text('Tanggal lahir'),
                        keyboardType: TextInputType.datetime,
                        readOnly: true,
                        controller: dob,
                        prefix: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.today,
                            size: 20,
                            color: context.onBackgroundColor,
                          ),
                        ),
                        suffix: ShadButton(
                          width: 24,
                          height: 24,
                          padding: EdgeInsets.zero,
                          decoration: const ShadDecoration(
                            secondaryBorder: ShadBorder.none,
                            secondaryFocusedBorder: ShadBorder.none,
                          ),
                          onPressed: () {
                            dob.clear();
                          },
                          icon: Icon(Icons.clear, size: 16),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ShadInputFormField(
                        controller: password,
                        label: Text(
                          'Password Baru',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        validator: (v) {
                          if (v.isEmpty) {
                            return 'Password baru tidak boleh kosong';
                          }
                          return null;
                        },
                        placeholder: Text('Password baru'),
                        obscureText: visiblePassword.value,
                        prefix: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.password,
                            size: 20,
                            color: context.onBackgroundColor,
                          ),
                        ),
                        suffix: ShadButton(
                          width: 24,
                          height: 24,
                          padding: EdgeInsets.zero,
                          decoration: const ShadDecoration(
                            secondaryBorder: ShadBorder.none,
                            secondaryFocusedBorder: ShadBorder.none,
                          ),
                          icon: Icon(
                            visiblePassword.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            size: 16,
                          ),
                          onPressed: () {
                            visiblePassword.value = !visiblePassword.value;
                          },
                        ),
                      ),
                      SizedBox(height: 16),
                      ShadButton(
                        width: double.infinity,
                        onPressed: () {
                          if (!formKey.currentState!.saveAndValidate()) {
                            return;
                          }
                          final dob =
                              DateFormat('yyyy-MM-dd').format(dobSelected.value!);
                          context.read<PasswordBloc>().add(
                                PasswordEvent.forget(
                                  newPassword: password.text,
                                  studentNumberId: studentNumberId.text,
                                  dob: dob,
                                ),
                              );
                        },
                        icon: state.isLoading
                            ? SizedBox.square(
                                dimension: 16,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: context.onPrimaryColor,
                                ),
                              )
                            : null,
                        child: const Text('Perbarui Password'),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
