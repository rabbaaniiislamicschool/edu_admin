import 'package:flutter/material.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:edu_admin/generated/assets.gen.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:logger/logger.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../di/di.dart';
import '../manager/auth_bloc.dart';
import '../manager/auth_event.dart';
import '../manager/auth_state.dart';
import '../manager/login_event.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<ShadFormState>());
    final visiblePassword = useState<bool>(true);
    final phoneNumber = useTextEditingController();
    final password = useTextEditingController();

    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.status == AuthStatus.loading) return;
          if (state.errorMessage != null) {
            getIt<Logger>().e(state.errorMessage);
            context.showMessage(state.errorMessage!);
            return;
          }
          // HomeRoute().pushReplacement(context);
        },
        builder: (context, state) {
          return Center(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 480),
                child: ShadCard(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ShadForm(
                      key: formKey,
                      child: AutofillGroup(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image.asset(
                                context.isDarkTheme
                                    ? Assets.images.logoTextDark.path
                                    : Assets.images.logoText.path,
                                height: 50,
                              ),
                            ),
                            const SizedBox(height: 16),
                            const Center(
                              child: Text(
                                "EduSystem",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Center(
                              child: Text(
                                "Assalamu'alaikum selamat datang di aplikasi RIS, silahkan masuk untuk bisa menggunakan aplikasi.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  // color: Colors.gray,
                                ),
                              ),
                            ),
                            const SizedBox(height: 24),
                            ShadInputFormField(
                              id: 'phoneNumber',
                              label: Text(
                                'Nomor Telepon',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              validator: (v) {
                                if (v.isEmpty) return 'Nomor Telepon tidak boleh kosong';
                                return null;
                              },
                              placeholder: Text('08xxxxxx'),
                              keyboardType: TextInputType.number,
                              controller: phoneNumber,
                              autofillHints: [AutofillHints.username],
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              prefix: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.phone,
                                  size: 20,
                                  color: context.onBackgroundColor,
                                ),
                              ),
                              trailing: ShadButton(
                                width: 24,
                                height: 24,
                                padding: EdgeInsets.zero,
                                decoration: const ShadDecoration(
                                  secondaryBorder: ShadBorder.none,
                                  secondaryFocusedBorder: ShadBorder.none,
                                ),
                                onPressed: () {
                                  phoneNumber.clear();
                                },
                                icon: Icon(
                                  Icons.clear,
                                  size: 16,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
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
                              autofillHints: [AutofillHints.password],
                              leading: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.password,
                                  size: 20,
                                  color: context.onBackgroundColor,
                                ),
                              ),
                              trailing: ShadButton(
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
                            Align(
                              alignment: Alignment.centerRight,
                              child: Transform.translate(
                                offset: Offset(12, 0),
                                child: ShadButton.ghost(
                                  onPressed: () {
                                    ForgetPasswordRoute().go(context);
                                  },
                                  child: const Text("Lupa password?"),
                                ),
                              ),
                            ),
                            ShadButton(
                              width: double.infinity,
                              onPressed: () {
                                if (!formKey.currentState!.saveAndValidate()) {
                                  return;
                                }
                                context
                                    .read<AuthBloc>()
                                    .add(AuthEvent.loginRequested(
                                      studentNumberId: phoneNumber.text,
                                      password: password.text,
                                    ));
                              },
                              leading: state.status == AuthStatus.loading
                                  ? SizedBox.square(
                                      dimension: 16,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        color: context.onPrimaryColor,
                                      ),
                                    )
                                  : null,
                              child: const Text('Masuk'),
                            ),
                            const SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
