// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $myShellRouteData,
  $loginRoute,
  $forgetPasswordRoute,
];

RouteBase get $myShellRouteData => ShellRouteData.$route(
  navigatorKey: MyShellRouteData.$navigatorKey,
  factory: $MyShellRouteDataExtension._fromState,
  routes: [
    GoRouteData.$route(path: '/', factory: $HomeRouteExtension._fromState),
    GoRouteData.$route(
      path: '/yayasan',

      factory: $FoundationRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/cabang',

      factory: $BranchesRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/sekolah',

      factory: $SchoolsRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/pegawai',

      factory: $EmployeesRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/kelas',

      factory: $ClassesRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/tagihan-kelas',

      factory: $ClassFeesRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/class-teachers',

      factory: $ClassTeachersRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/fee-types',

      factory: $FeeTypesRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/ruangan',

      factory: $RoomsRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/student-classes',

      factory: $StudentClassesRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/student-fees',

      factory: $StudentFeesRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/transactions',

      factory: $TransactionsRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/kenaikan-kelas',

      factory: $ClassPromotionRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/siswa',

      factory: $StudentsRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/pembayaran',

      factory: $BillsRouteExtension._fromState,
    ),
    GoRouteData.$route(
      path: '/akun',

      factory: $ProfileRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'ubah-password',

          factory: $UpdatePasswordRouteExtension._fromState,
        ),
      ],
    ),
  ],
);

extension $MyShellRouteDataExtension on MyShellRouteData {
  static MyShellRouteData _fromState(GoRouterState state) =>
      const MyShellRouteData();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location('/');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FoundationRouteExtension on FoundationRoute {
  static FoundationRoute _fromState(GoRouterState state) =>
      const FoundationRoute();

  String get location => GoRouteData.$location('/yayasan');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BranchesRouteExtension on BranchesRoute {
  static BranchesRoute _fromState(GoRouterState state) => const BranchesRoute();

  String get location => GoRouteData.$location('/cabang');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SchoolsRouteExtension on SchoolsRoute {
  static SchoolsRoute _fromState(GoRouterState state) => const SchoolsRoute();

  String get location => GoRouteData.$location('/sekolah');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $EmployeesRouteExtension on EmployeesRoute {
  static EmployeesRoute _fromState(GoRouterState state) =>
      const EmployeesRoute();

  String get location => GoRouteData.$location('/pegawai');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ClassesRouteExtension on ClassesRoute {
  static ClassesRoute _fromState(GoRouterState state) => const ClassesRoute();

  String get location => GoRouteData.$location('/kelas');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ClassFeesRouteExtension on ClassFeesRoute {
  static ClassFeesRoute _fromState(GoRouterState state) =>
      const ClassFeesRoute();

  String get location => GoRouteData.$location('/tagihan-kelas');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ClassTeachersRouteExtension on ClassTeachersRoute {
  static ClassTeachersRoute _fromState(GoRouterState state) =>
      const ClassTeachersRoute();

  String get location => GoRouteData.$location('/class-teachers');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FeeTypesRouteExtension on FeeTypesRoute {
  static FeeTypesRoute _fromState(GoRouterState state) => const FeeTypesRoute();

  String get location => GoRouteData.$location('/fee-types');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $RoomsRouteExtension on RoomsRoute {
  static RoomsRoute _fromState(GoRouterState state) => const RoomsRoute();

  String get location => GoRouteData.$location('/ruangan');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $StudentClassesRouteExtension on StudentClassesRoute {
  static StudentClassesRoute _fromState(GoRouterState state) =>
      const StudentClassesRoute();

  String get location => GoRouteData.$location('/student-classes');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $StudentFeesRouteExtension on StudentFeesRoute {
  static StudentFeesRoute _fromState(GoRouterState state) =>
      StudentFeesRoute(title: state.uri.queryParameters['title']!);

  String get location =>
      GoRouteData.$location('/student-fees', queryParams: {'title': title});

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TransactionsRouteExtension on TransactionsRoute {
  static TransactionsRoute _fromState(GoRouterState state) =>
      const TransactionsRoute();

  String get location => GoRouteData.$location('/transactions');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ClassPromotionRouteExtension on ClassPromotionRoute {
  static ClassPromotionRoute _fromState(GoRouterState state) =>
      const ClassPromotionRoute();

  String get location => GoRouteData.$location('/kenaikan-kelas');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $StudentsRouteExtension on StudentsRoute {
  static StudentsRoute _fromState(GoRouterState state) => const StudentsRoute();

  String get location => GoRouteData.$location('/siswa');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BillsRouteExtension on BillsRoute {
  static BillsRoute _fromState(GoRouterState state) => const BillsRoute();

  String get location => GoRouteData.$location('/pembayaran');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileRouteExtension on ProfileRoute {
  static ProfileRoute _fromState(GoRouterState state) => const ProfileRoute();

  String get location => GoRouteData.$location('/akun');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $UpdatePasswordRouteExtension on UpdatePasswordRoute {
  static UpdatePasswordRoute _fromState(GoRouterState state) =>
      const UpdatePasswordRoute();

  String get location => GoRouteData.$location('/akun/ubah-password');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginRoute => GoRouteData.$route(
  path: '/login',

  factory: $LoginRouteExtension._fromState,
);

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location('/login');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $forgetPasswordRoute => GoRouteData.$route(
  path: '/lupa-password',

  factory: $ForgetPasswordRouteExtension._fromState,
);

extension $ForgetPasswordRouteExtension on ForgetPasswordRoute {
  static ForgetPasswordRoute _fromState(GoRouterState state) =>
      const ForgetPasswordRoute();

  String get location => GoRouteData.$location('/lupa-password');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
