import 'package:edu_admin/core/res/strings.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:edu_admin/test/test_form_screen.dart';
import 'package:edu_admin/test/widgets/custom_app_bar.dart';
import 'package:fluent_ui/fluent_ui.dart' hide IconButton;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:forui/forui.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import '../core/utils/string_utils.dart';
import '../generated/assets.gen.dart';
import '../generated/l10n.dart';

class TestScreen extends HookWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final displayMode = useState<PaneDisplayMode>(PaneDisplayMode.auto);
    final topIndex = useState<int>(0);
    return NavigationView(
      transitionBuilder: (child, animation) {
        return DrillInPageTransition(animation: animation, child: child);
      },
      appBar: NavigationAppBar(
        backgroundColor: context.backgroundColor,
        height: kToolbarHeight,
        automaticallyImplyLeading: false,
        // leading: IconButton(icon: Icon(Icons.add), onPressed: () {}),
        title: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            if (ResponsiveBreakpoints.of(context).largerThan(MOBILE))
              Image.asset(Assets.images.logo.path, width: 40),

            Padding(
              padding: EdgeInsets.only(left: ResponsiveBreakpoints.of(context).isMobile ? 0.0 : 8.0),
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
        actions: Transform.translate(
          offset: Offset(0, 2),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
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
                  onPressed: () {},
                  child: Text('2024/2025'),
                ),

              if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
                ShadIconButton.outline(
                  icon: Icon(Icons.notifications),
                  onPressed: () {},
                  iconSize: 40,
                ),
              SizedBox(width: 8),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  FAvatar(
                    image: NetworkImage(''),
                    fallback: Text(StringUtils.getInitials('UW')),
                  ),
                  if (ResponsiveBreakpoints.of(context).largerThan(MOBILE))
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('Uun Wahyuni' ?? '-'),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.expand_more),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      pane: NavigationPane(
        size: NavigationPaneSize(openMaxWidth: 240),
        selected: topIndex.value,
        onItemPressed: (index) {
          if (index == topIndex.value) {
            if (displayMode.value == PaneDisplayMode.open) {
              displayMode.value = PaneDisplayMode.compact;
            } else if (displayMode.value == PaneDisplayMode.compact) {
              displayMode.value = PaneDisplayMode.open;
            }
          }
        },
        onChanged: (index) => topIndex.value = index,
        displayMode: displayMode.value,
        items: [
          PaneItem(
            icon: const Icon(FluentIcons.home),
            title: Text(S.of(context).menu_home),
            body: TestFormScreen(),
          ),
          PaneItemSeparator(),
          PaneItem(
            icon: const Icon(FluentIcons.employee_self_service),
            title: Text(S.of(context).menu_employees),
            body: TestFormScreen(),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.school_data_sync_logo),
            title: Text(S.of(context).menu_students),
            body: Container(child: Text('Siswa')),
          ),
          PaneItemExpander(
            icon: const Icon(FluentIcons.account_management),
            title: Text(S.of(context).menu_class),
            body: Text('Kelas'),
            items: [
              PaneItem(
                icon: const Icon(FluentIcons.room),
                title: const Text('Ruang Kelas'),
                body: Text('Ruang Kelas'),
              ),
              PaneItem(
                icon: const Icon(FluentIcons.up),
                title: const Text('Kenaikan Kelas'),
                body: Text('Kenaikan Kelas'),
              ),
            ],
          ),
          PaneItemExpander(
            icon: const Icon(FluentIcons.payment_card),
            title: Text(S.of(context).menu_payments),
            body: Text('Pembayaran'),
            onTap: () {

            },
            items: [
              PaneItem(
                icon: const Icon(FluentIcons.money),
                title: Text(S.of(context).menu_tuition_fees),
                body: Text('SPP'),
              ),
              PaneItem(
                icon: const Icon(FluentIcons.account_activity),
                title: Text(S.of(context).menu_other_fees),
                body: Text('Biaya Lain'),
              ),
            ],
          ),
        ],
        footerItems: [
          PaneItem(
            icon: const Icon(FluentIcons.settings),
            title: const Text('Settings'),
            body: Container(),
          ),
          PaneItemAction(
            icon: const Icon(FluentIcons.add),
            title: const Text('Add New Item'),
            onTap: () {
              // // Your Logic to Add New `NavigationPaneItem`
              // items.add(
              //   PaneItem(
              //     icon: const Icon(FluentIcons.new_folder),
              //     title: const Text('New Item'),
              //     body: const Center(
              //       child: Text(
              //         'This is a newly added Item',
              //       ),
              //     ),
              //   ),
              // );
              // setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
