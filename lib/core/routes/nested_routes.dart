import 'package:edu_admin/features/employees/presentation/pages/employees_screen.dart';
import 'package:edu_admin/features/payments/presentation/pages/payments_screen.dart';
import 'package:edu_admin/features/students/presentation/pages/students_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:edu_admin/core/routes/responsive_scaffold.dart';
import 'package:edu_admin/features/forget_password/presentation/pages/forget_password_screen.dart';
import 'package:edu_admin/features/forget_password/presentation/pages/update_password_screen.dart';
import 'package:edu_admin/features/home/presentation/pages/home_screen.dart';
import '../../features/auth/presentation/pages/login_screen.dart';
import '../../features/profiles/presentation/pages/profile_screen.dart';

part 'nested_routes.g.dart';

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }
}

@TypedGoRoute<ForgetPasswordRoute>(path: '/lupa-password')
class ForgetPasswordRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ForgetPasswordScreen();
  }
}

final GlobalKey<NavigatorState> _sectionHomeKey = GlobalKey<NavigatorState>(
  debugLabel: 'sectionHome',
);
final GlobalKey<NavigatorState> _sectionEmployeesKey =
    GlobalKey<NavigatorState>(debugLabel: 'sectionEmployees');
final GlobalKey<NavigatorState> _sectionStudentsKey = GlobalKey<NavigatorState>(
  debugLabel: 'sectionStudents',
);
final GlobalKey<NavigatorState> _sectionPaymentsKey = GlobalKey<NavigatorState>(
  debugLabel: 'sectionPayments',
);
final GlobalKey<NavigatorState> _sectionProfileKey = GlobalKey<NavigatorState>(
  debugLabel: 'sectionProfile',
);

@TypedStatefulShellRoute<NestedShellRouteData>(
  branches: [
    TypedStatefulShellBranch<HomeBranchData>(
      routes: [TypedGoRoute<HomeRoute>(path: '/')],
    ),
    TypedStatefulShellBranch<EmployeesBranchData>(
      routes: [TypedGoRoute<EmployeesRoute>(path: '/pegawai')],
    ),
    TypedStatefulShellBranch<StudentsBranchData>(
      routes: [TypedGoRoute<StudentsRoute>(path: '/siswa')],
    ),
    TypedStatefulShellBranch<PaymentsBranchData>(
      routes: [TypedGoRoute<PaymentsRoute>(path: '/pembayaran')],
    ),
    TypedStatefulShellBranch<ProfileBranchData>(
      routes: [
        TypedGoRoute<ProfileRoute>(
          path: '/akun',
          routes: [TypedGoRoute<UpdatePasswordRoute>(path: 'ubah-password')],
        ),
      ],
    ),
  ],
)
class NestedShellRouteData extends StatefulShellRouteData {
  const NestedShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return navigationShell;
  }

  static const String $restorationScopeId = 'restorationScopeId';

  static Widget $navigatorContainerBuilder(
    BuildContext context,
    StatefulNavigationShell navigationShell,
    List<Widget> children,
  ) {
    final body = children[navigationShell.currentIndex];
    return ResponsiveScaffold(navigationShell: navigationShell, body: body);
  }
}

class HomeBranchData extends StatefulShellBranchData {
  // const HomeBranchData();
  static final GlobalKey<NavigatorState> $navigatorKey = _sectionHomeKey;
}

class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return HomeScreen();
  }
}

class EmployeesBranchData extends StatefulShellBranchData {
  static final GlobalKey<NavigatorState> $navigatorKey = _sectionEmployeesKey;
}

class EmployeesRoute extends GoRouteData {
  EmployeesRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EmployeesScreen();
  }
}

class StudentsBranchData extends StatefulShellBranchData {
  static final GlobalKey<NavigatorState> $navigatorKey = _sectionStudentsKey;
}

class StudentsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return StudentsScreen();
  }
}

class PaymentsBranchData extends StatefulShellBranchData {
  static final GlobalKey<NavigatorState> $navigatorKey = _sectionPaymentsKey;
}

class PaymentsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PaymentsScreen();
  }
}

class ProfileBranchData extends StatefulShellBranchData {
  static final GlobalKey<NavigatorState> $navigatorKey = _sectionProfileKey;
}

class ProfileRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProfileScreen();
  }
}

class UpdatePasswordRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return UpdatePasswordScreen();
  }
}
