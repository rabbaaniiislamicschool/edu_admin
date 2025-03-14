// import 'package:device_preview/device_preview.dart';
// import 'package:edu_admin/core/utils/ui_extensions.dart';
// import 'package:edu_admin/test/test_screen.dart';
//
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart' hide Colors;
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:forui/forui.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:responsive_framework/responsive_framework.dart';
// import 'package:shadcn_ui/shadcn_ui.dart';
//
// import '../di/di.dart';
// import '../generated/l10n.dart';
//
// class TestApp extends HookWidget {
//   const TestApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ShadApp.material(
//       builder: (context, child) {
//         return FTheme(
//           data: context.isDarkTheme ? FThemes.green.dark : FThemes.green.light,
//           child: FluentApp(
//             supportedLocales: S.delegate.supportedLocales,
//             debugShowCheckedModeBanner: false,
//             themeMode: ThemeMode.system,
//             locale: const Locale('id'),
//             localizationsDelegates: [
//               S.delegate,
//               GlobalMaterialLocalizations.delegate,
//               GlobalWidgetsLocalizations.delegate,
//               GlobalCupertinoLocalizations.delegate,
//             ],
//             theme: FluentThemeData.light().copyWith(accentColor: Colors.green),
//             darkTheme: FluentThemeData.dark().copyWith(
//               accentColor: Colors.green,
//             ),
//             home: ResponsiveBreakpoints.builder(
//               child: TestScreen(),
//               breakpoints: [
//                 const Breakpoint(start: 0, end: 640, name: MOBILE),
//                 const Breakpoint(start: 641, end: 1024, name: TABLET),
//                 const Breakpoint(
//                   start: 1025,
//                   end: double.infinity,
//                   name: DESKTOP,
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//       // home: TestScreen(),
//       // routerConfig: getIt<GoRouter>(),
//       themeMode: ThemeMode.system,
//       theme: ShadThemeData(
//         brightness: Brightness.light,
//         colorScheme: ShadGreenColorScheme.light(),
//         textTheme: ShadTextTheme.fromGoogleFont(GoogleFonts.poppins),
//       ),
//       darkTheme: ShadThemeData(
//         brightness: Brightness.dark,
//         colorScheme: ShadGreenColorScheme.dark(),
//         textTheme: ShadTextTheme.fromGoogleFont(GoogleFonts.poppins),
//       ),
//     );
//   }
// }
