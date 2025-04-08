import 'package:edu_admin/features/bills/presentation/manager/bill_bloc.dart';
import 'package:edu_admin/features/branchs/presentation/manager/branch_bloc.dart';
import 'package:edu_admin/features/class_fees/presentation/manager/class_fee_bloc.dart';
import 'package:edu_admin/features/class_teachers/presentation/manager/class_teacher_bloc.dart';
import 'package:edu_admin/features/classes/presentation/manager/class_bloc.dart';
import 'package:edu_admin/features/divisions/presentation/manager/division_bloc.dart';
import 'package:edu_admin/features/fee_types/presentation/manager/fee_type_bloc.dart';
import 'package:edu_admin/features/forget_password/presentation/manager/password_bloc.dart';
import 'package:edu_admin/features/foundations/presentation/manager/foundation_bloc.dart';
import 'package:edu_admin/features/rooms/presentation/manager/room_bloc.dart';
import 'package:edu_admin/features/schools/presentation/manager/school_bloc.dart';
import 'package:edu_admin/features/student_classes/presentation/manager/student_class_bloc.dart';
import 'package:edu_admin/features/student_fees/presentation/manager/student_fee_bloc.dart';
import 'package:edu_admin/features/transactions/presentation/manager/transaction_bloc.dart';
import 'package:fluent_ui/fluent_ui.dart';

import 'package:flutter/material.dart' hide Colors;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'di/di.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'features/auth/presentation/manager/auth_bloc.dart';
import 'features/employees/presentation/manager/employee_bloc.dart';
import 'generated/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(create: (context) => getIt<FoundationBloc>()),
        BlocProvider(create: (context) => getIt<BranchBloc>()),
        BlocProvider(create: (context) => getIt<ClassBloc>()),
        BlocProvider(create: (context) => getIt<SchoolBloc>()),
        BlocProvider(create: (context) => getIt<DivisionBloc>()),
        BlocProvider(create: (context) => getIt<BillBloc>()),
        BlocProvider(create: (context) => getIt<ClassFeeBloc>()),
        BlocProvider(create: (context) => getIt<ClassTeacherBloc>()),
        BlocProvider(create: (context) => getIt<FeeTypeBloc>()),
        BlocProvider(create: (context) => getIt<RoomBloc>()),
        BlocProvider(create: (context) => getIt<StudentClassBloc>()),
        BlocProvider(create: (context) => getIt<StudentFeeBloc>()),
        BlocProvider(create: (context) => getIt<TransactionBloc>()),
        BlocProvider(create: (context) => getIt<PasswordBloc>()),
        BlocProvider(create: (context) => getIt<EmployeeBloc>()),
      ],
      child: ShadApp.router(
        localizationsDelegates: [S.delegate],
        builder: (context, child) {
          return FTheme(
            data:
                context.isDarkTheme ? FThemes.green.dark : FThemes.green.light,
            child: FluentApp(
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              themeMode: ThemeMode.system,
              locale: const Locale('id'),
              localizationsDelegates: const [S.delegate],
              theme: FluentThemeData(
                accentColor: Colors.green,
                brightness: Brightness.light,
                fontFamily: GoogleFonts.poppins().fontFamily,
                // navigationPaneTheme: NavigationPaneThemeData(
                //   backgroundColor: context.backgroundColor,
                //   selectedIconColor: WidgetStateProperty.all(context.primaryColor),
                //   selectedTextStyle: WidgetStateProperty.all(context.shadTextTheme.small.copyWith(color: context.primaryColor)),
                //   overlayBackgroundColor: context.backgroundColor,
                // ),
              ),
              darkTheme: FluentThemeData(
                accentColor: Colors.green,
                brightness: Brightness.dark,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              home: ResponsiveBreakpoints.builder(
                child: child!,
                breakpoints: [
                  const Breakpoint(start: 0, end: 640, name: MOBILE),
                  const Breakpoint(start: 641, end: 1024, name: TABLET),
                  const Breakpoint(
                    start: 1025,
                    end: double.infinity,
                    name: DESKTOP,
                  ),
                ],
              ),
            ),
          );
        },
        routerConfig: getIt<GoRouter>(),
        themeMode: ThemeMode.system,
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
