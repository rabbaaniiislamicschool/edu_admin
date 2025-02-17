import 'package:edu_admin/features/forget_password/presentation/manager/password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'di/di.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'features/auth/presentation/manager/auth_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(create: (context) => getIt<PasswordBloc>()),
      ],
      child: ShadApp.materialRouter(
        builder: (context, child) => FTheme(
          data: context.isDarkTheme ? FThemes.green.dark : FThemes.green.light,
          child: child!,
        ),
        routerConfig: getIt<GoRouter>(),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        locale: const Locale('id', 'ID'),
        supportedLocales: const [
          Locale('id', 'ID'),
          Locale('en', 'US'),
        ],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        theme: ShadThemeData(
          brightness: Brightness.light,
          colorScheme: ShadGreenColorScheme.light(),
          textTheme: ShadTextTheme.fromGoogleFont(GoogleFonts.poppins),
        ),
        darkTheme: ShadThemeData(
          brightness: Brightness.dark,
          colorScheme: ShadGreenColorScheme.dark(),
          textTheme: ShadTextTheme.fromGoogleFont(GoogleFonts.poppins),
        ),
      ),
    );
  }
}
