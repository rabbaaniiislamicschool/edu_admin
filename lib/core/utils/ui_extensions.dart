import 'package:flutter/material.dart';
import 'package:edu_admin/core/res/colors.dart';
import 'package:forui/forui.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

extension UiExtensions on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  TextTheme get textTheme => Theme.of(this).textTheme;

  Color get primaryColor => colorScheme.primary;
  Color get borderColor => colorScheme.outline.withAlpha(38);

  Color get errorColor => colorScheme.error;

  Color get onPrimaryColor => colorScheme.onPrimary;

  Color get backgroundColor => colorScheme.surface;

  Color get onBackgroundColor => colorScheme.onSurface;

  Color get secondaryColor => colorScheme.secondary;

  Color get onSecondaryColor => colorScheme.onSecondary;

  bool get isDarkTheme => Theme.of(this).brightness == Brightness.dark;

  Color? get iconColor =>
      onBackgroundColor.withValues(alpha: isDarkTheme ? 0.87 : 0.60);

  Color? get redColor => Colors.red[500];

  Color? get redSurfaceColor => isDarkTheme ? Colors.red[50] : Colors.red[100];

  Color? get greenColor => Colors.green[500];

  Color? get greenSurfaceColor =>
      isDarkTheme ? Colors.green[50] : Colors.green[100];

  Color? get blueColor => Colors.blue[500];

  Color? get blueSurfaceColor =>
      isDarkTheme ? Colors.blue[50] : Colors.blue[100];

  Color? get orangeColor => Colors.deepOrange[500];

  Color? get orangeSurfaceColor =>
      isDarkTheme ? Colors.deepOrange[50] : Colors.deepOrange[100];

  Color? get purpleColor => Colors.purple[500];

  Color? get purpleSurfaceColor =>
      isDarkTheme ? Colors.purple[50] : Colors.purple[100];

  Color? get yellowColor => Colors.orange[500];

  Color? get yellowSurfaceColor =>
      isDarkTheme ? Colors.orange[50] : Colors.orange[100];

  ShadTextTheme get shadTextTheme => ShadTheme.of(this).textTheme;

  ShadColorScheme get shadColorScheme => ShadTheme.of(this).colorScheme;

  void showMessage(
    String title, {
    String? description,
    String action = 'Tutup',
    VoidCallback? onAction,
    VoidCallback? onClose,
  }) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ShadToaster.of(this).show(
        ShadToast(
          alignment: Alignment.bottomCenter,
          title: Text(title),
          description: description != null ? Text(description) : null,
          action:
              onAction != null
                  ? ShadButton.outline(
                    child: Text(action),
                    onPressed: () {
                      onAction.call();
                      ShadToaster.of(this).hide();
                    },
                  )
                  : null,
        ),
      );
    });
  }

  void showErroMessage(
    String title, {
    String? description,
    String action = 'Tutup',
    VoidCallback? onAction,
    VoidCallback? onClose,
  }) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ShadToaster.of(this).show(
        ShadToast.destructive(
          alignment: Alignment.bottomCenter,
          title: Text(title),
          description: description != null ? Text(description) : null,
          action:
              onAction != null
                  ? ShadButton.destructive(
                    child: Text(action),
                    onPressed: () {
                      onAction.call();
                      ShadToaster.of(this).hide();
                    },
                  )
                  : null,
        ),
      );
    });
  }

  void showSuccessMessage(
    String title, {
    String? description,
    String action = 'Tutup',
    VoidCallback? onAction,
    VoidCallback? onClose
  }) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ShadToaster.of(this).show(
        ShadToast.destructive(
          alignment: Alignment.bottomCenter,
          title: Text(title, style: TextStyle(color: onPrimaryColor, fontWeight: description != null ? FontWeight.bold : null)),
          backgroundColor: primaryColor,
          description:
              description != null
                  ? Text(description, style: TextStyle(color: onPrimaryColor))
                  : null,
          action:
              onAction != null
                  ? ShadButton.destructive(
                    backgroundColor: primaryColor,
                    hoverBackgroundColor: primaryColor,
                    child: Text(action),
                    onPressed: () {
                      onAction.call();
                      ShadToaster.of(this).hide();
                    },
                  )
                  : null,
        ),
      );
    });
  }
}
