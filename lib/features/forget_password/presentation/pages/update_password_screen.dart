import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:edu_admin/features/forget_password/presentation/manager/password_bloc.dart';
import 'package:edu_admin/features/forget_password/presentation/manager/password_event.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../manager/password_state.dart';

class UpdatePasswordScreen extends HookWidget {
  const UpdatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<ShadFormState>());
    final visiblePassword = useState<bool>(true);
    final visibleConfirmPassword = useState<bool>(true);
    final password = useTextEditingController();
    final confirmPassword = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Perbarui Password'),
        centerTitle: false,
      ),
      body: BlocConsumer<PasswordBloc, PasswordState>(
        listener: (context, state) {
          if(state.errorMessage != null){
            context.showMessage(state.errorMessage!);
            return;
          }
          if(state.isUpdateSuccess == false) return;
          context.showMessage('Berhasil memperbarui password');
          context.pop();
        },
        builder: (context, state) {
          return ShadForm(
            key: formKey,
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                ShadInputFormField(
                  controller: password,
                  label: Text(
                    'Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  validator: (v) {
                    if (v.isEmpty) {
                      return 'Password tidak boleh kosong';
                    }
                    return null;
                  },
                  placeholder: Text('Password'),
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
                const SizedBox(height: 16),
                ShadInputFormField(
                  controller: confirmPassword,
                  label: Text(
                    'Konfirmasi Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  validator: (v) {
                    if (v.isEmpty) {
                      return 'Konfirmasi Password tidak boleh kosong';
                    }
                    if(v != password.text){
                      return 'Password tidak sama';
                    }
                    return null;
                  },
                  placeholder: Text('Konfirmasi Password'),
                  obscureText: visibleConfirmPassword.value,
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
                      visibleConfirmPassword.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                      size: 16,
                    ),
                    onPressed: () {
                      visibleConfirmPassword.value =
                          !visibleConfirmPassword.value;
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
                    context
                        .read<PasswordBloc>()
                        .add(PasswordEvent.update(newPassword: password.text));
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
    );
  }
}
