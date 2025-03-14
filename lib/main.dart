import 'package:device_preview/device_preview.dart';
import 'package:edu_admin/test/custom_app.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:injectable/injectable.dart';
import 'package:edu_admin/di/di.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUrlStrategy(PathUrlStrategy());
  await configureDependencies(Environment.prod);
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (BuildContext context) {
        return const MyApp();
      },
    ),
  );
}
