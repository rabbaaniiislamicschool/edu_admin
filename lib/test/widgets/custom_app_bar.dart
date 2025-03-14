import 'package:edu_admin/core/res/strings.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:forui/forui.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../core/utils/string_utils.dart';
import '../../generated/assets.gen.dart';
import '../../generated/l10n.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? academicYear;
  final String? profileName;
  final String? profileImageUrl;
  final VoidCallback? onNotifPressed;
  final VoidCallback? onAcademicYearPressed;
  final VoidCallback? onProfilePressed;
  final VoidCallback? onDrawerPressed;

  const CustomAppBar({
    super.key,
    this.onNotifPressed,
    this.onAcademicYearPressed,
    this.onProfilePressed,
    this.onDrawerPressed,
    this.profileImageUrl,
    this.profileName,
    this.academicYear,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:
          ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
              ? Container(
                margin: const EdgeInsets.only(left: 12.0),
                child: IconButton(
                  onPressed: onDrawerPressed,
                  icon: Icon(Icons.dehaze),
                ),
              )
              : Container(),
      centerTitle: false,
      leadingWidth:
          ResponsiveBreakpoints.of(context).smallerThan(DESKTOP) ? 40 : 0,
      title: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          if (ResponsiveBreakpoints.of(context).largerThan(MOBILE))
            Image.asset(Assets.images.logo.path, width: 40),

          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foundationName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(systemName, style: TextStyle(fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
      actions: [
        if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              S.of(context).academic_year,
              style: context.shadTextTheme.small,
            ),
          ),

        if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
          ShadButton.outline(
            trailing: Icon(Icons.settings),
            onPressed: onAcademicYearPressed,
            child: Text(
              academicYear != null
                  ? '$academicYear ${S.of(context).even}'
                  : '-',
            ),
          ),

        if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
          ShadIconButton.outline(
            icon: Icon(Icons.notifications),
            onPressed: onNotifPressed,
            iconSize: 40,
          ),
        SizedBox(width: 8),
        InkWell(
          onTap: onProfilePressed,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              FAvatar(
                image: NetworkImage('$profileImageUrl'),
                fallback: Text(StringUtils.getInitials(profileName)),
              ),
              if (ResponsiveBreakpoints.of(context).largerThan(MOBILE))
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(profileName ?? '-'),
                ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(Icons.expand_more),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
