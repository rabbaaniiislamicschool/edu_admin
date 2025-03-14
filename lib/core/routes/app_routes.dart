import 'package:edu_admin/core/components/responsive_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/pages/login_screen.dart';
import '../../features/bills/presentation/pages/bill_screen.dart';
import '../../features/branchs/presentation/pages/branches_screen.dart';
import '../../features/class_fees/presentation/pages/class_fees_screen.dart';
import '../../features/class_teachers/presentation/pages/class_teachers_screen.dart';
import '../../features/classes/presentation/pages/class_promotion_screen.dart';
import '../../features/classes/presentation/pages/classes_screen.dart';
import '../../features/employees/presentation/pages/employees_screen.dart';
import '../../features/fee_types/presentation/pages/fee_types_screen.dart';
import '../../features/forget_password/presentation/pages/forget_password_screen.dart';
import '../../features/forget_password/presentation/pages/update_password_screen.dart';
import '../../features/foundations/presentation/pages/foundations_screen.dart';
import '../../features/home/presentation/pages/home_screen.dart';
import '../../features/payments/presentation/pages/payments_screen.dart';
import '../../features/profiles/presentation/pages/profile_screen.dart';
import '../../features/rooms/presentation/pages/rooms_screen.dart';
import '../../features/schools/presentation/pages/school_screen.dart';
import '../../features/student_classes/presentation/pages/student_classes_screen.dart';
import '../../features/student_fees/presentation/pages/student_fees_screen.dart';
import '../../features/students/presentation/pages/students_screen.dart';
import '../../features/transactions/presentation/pages/transactions_screen.dart';

part 'app_routes.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedShellRoute<MyShellRouteData>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<HomeRoute>(path: '/'),
    // TypedGoRoute<LoginRoute>(path: '/login'),
    // TypedGoRoute<ForgetPasswordRoute>(path: '/lupa-password'),
    TypedGoRoute<FoundationRoute>(path: '/yayasan'),
    TypedGoRoute<BranchesRoute>(path: '/cabang'),
    TypedGoRoute<SchoolsRoute>(path: '/sekolah'),
    TypedGoRoute<EmployeesRoute>(path: '/pegawai'),
    TypedGoRoute<ClassesRoute>(path: '/kelas'),
    TypedGoRoute<ClassFeesRoute>(path: '/tagihan-kelas'),
    TypedGoRoute<ClassTeachersRoute>(path: '/class-teachers'),
    TypedGoRoute<FeeTypesRoute>(path: '/fee-types'),
    TypedGoRoute<RoomsRoute>(path: '/ruangan'),
    TypedGoRoute<StudentClassesRoute>(path: '/student-classes'),
    TypedGoRoute<StudentFeesRoute>(path: '/student-fees'),
    TypedGoRoute<TransactionsRoute>(path: '/transactions'),
    TypedGoRoute<ClassPromotionRoute>(path: '/kenaikan-kelas'),
    TypedGoRoute<StudentsRoute>(path: '/siswa'),
    TypedGoRoute<BillsRoute>(path: '/pembayaran'),
    TypedGoRoute<ProfileRoute>(
      path: '/akun',
      routes: [TypedGoRoute<UpdatePasswordRoute>(path: 'ubah-password')],
    ),
  ],
)
class MyShellRouteData extends ShellRouteData {
  const MyShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return ResponsiveScaffold(child: navigator);
  }
}

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData {
  const LoginRoute();

  // Without this static key, the dialog will not cover the navigation rail.
  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }
}

@TypedGoRoute<ForgetPasswordRoute>(path: '/lupa-password')
class ForgetPasswordRoute extends GoRouteData {
  const ForgetPasswordRoute();

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ForgetPasswordScreen();
  }
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return HomeScreen();
  }
}

class FoundationRoute extends GoRouteData {
  const FoundationRoute();

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return FoundationsScreen();
  }
}

class EmployeesRoute extends GoRouteData {
  const EmployeesRoute();

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EmployeesScreen();
  }
}

class ClassesRoute extends GoRouteData {
  const ClassesRoute();

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ClassesScreen();
  }
}

class ClassPromotionRoute extends GoRouteData {
  const ClassPromotionRoute();

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ClassPromotionScreen();
  }
}

class StudentsRoute extends GoRouteData {
  const StudentsRoute();

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return StudentsScreen();
  }
}

class PaymentsRoute extends GoRouteData {
  const PaymentsRoute();

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PaymentsScreen();
  }
}

class ProfileRoute extends GoRouteData {
  const ProfileRoute();

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProfileScreen();
  }
}

class UpdatePasswordRoute extends GoRouteData {
  const UpdatePasswordRoute();

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return UpdatePasswordScreen();
  }
}

class BranchesRoute extends GoRouteData {
  const BranchesRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BranchesScreen();
  }
}

class SchoolsRoute extends GoRouteData {
  const SchoolsRoute();

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SchoolsScreen();
  }
}

class BillsRoute extends GoRouteData {
  const BillsRoute();

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BillsScreen();
  }
}

class ClassFeesRoute extends GoRouteData {
  const ClassFeesRoute();

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ClassFeesScreen();
  }
}

class ClassTeachersRoute extends GoRouteData {
  const ClassTeachersRoute();

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ClassTeachersScreen();
  }
}

class FeeTypesRoute extends GoRouteData {
  const FeeTypesRoute();

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return FeeTypesScreen();
  }
}

class RoomsRoute extends GoRouteData {
  const RoomsRoute();

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RoomsScreen();
  }
}

class StudentClassesRoute extends GoRouteData {
  const StudentClassesRoute();

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return StudentClassesScreen();
  }
}

class StudentFeesRoute extends GoRouteData {
  final String title;

  const StudentFeesRoute({required this.title});

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return StudentFeesScreen(title: title);
  }
}

class TransactionsRoute extends GoRouteData {
  const TransactionsRoute();

  // static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TransactionsScreen();
  }
}
