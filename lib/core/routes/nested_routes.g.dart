// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nested_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $loginRoute,
  $forgetPasswordRoute,
  $nestedShellRouteData,
];

RouteBase get $loginRoute => GoRouteData.$route(
  path: '/login',

  factory: $LoginRouteExtension._fromState,
);

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => LoginRoute();

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
      ForgetPasswordRoute();

  String get location => GoRouteData.$location('/lupa-password');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $nestedShellRouteData => StatefulShellRouteData.$route(
  restorationScopeId: NestedShellRouteData.$restorationScopeId,
  navigatorContainerBuilder: NestedShellRouteData.$navigatorContainerBuilder,
  factory: $NestedShellRouteDataExtension._fromState,
  branches: [
    StatefulShellBranchData.$branch(
      navigatorKey: HomeBranchData.$navigatorKey,

      routes: [
        GoRouteData.$route(path: '/', factory: $HomeRouteExtension._fromState),
      ],
    ),
    StatefulShellBranchData.$branch(
      navigatorKey: EmployeesBranchData.$navigatorKey,

      routes: [
        GoRouteData.$route(
          path: '/pegawai',

          factory: $EmployeesRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      navigatorKey: StudentsBranchData.$navigatorKey,

      routes: [
        GoRouteData.$route(
          path: '/siswa',

          factory: $StudentsRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      navigatorKey: PaymentsBranchData.$navigatorKey,

      routes: [
        GoRouteData.$route(
          path: '/pembayaran',

          factory: $PaymentsRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      navigatorKey: ProfileBranchData.$navigatorKey,

      routes: [
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
    ),
  ],
);

extension $NestedShellRouteDataExtension on NestedShellRouteData {
  static NestedShellRouteData _fromState(GoRouterState state) =>
      const NestedShellRouteData();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  String get location => GoRouteData.$location('/');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $EmployeesRouteExtension on EmployeesRoute {
  static EmployeesRoute _fromState(GoRouterState state) => EmployeesRoute();

  String get location => GoRouteData.$location('/pegawai');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $StudentsRouteExtension on StudentsRoute {
  static StudentsRoute _fromState(GoRouterState state) => StudentsRoute();

  String get location => GoRouteData.$location('/siswa');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PaymentsRouteExtension on PaymentsRoute {
  static PaymentsRoute _fromState(GoRouterState state) => PaymentsRoute();

  String get location => GoRouteData.$location('/pembayaran');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileRouteExtension on ProfileRoute {
  static ProfileRoute _fromState(GoRouterState state) => ProfileRoute();

  String get location => GoRouteData.$location('/akun');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $UpdatePasswordRouteExtension on UpdatePasswordRoute {
  static UpdatePasswordRoute _fromState(GoRouterState state) =>
      UpdatePasswordRoute();

  String get location => GoRouteData.$location('/akun/ubah-password');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
