import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import '../../generated/assets.gen.dart';
import '../../generated/l10n.dart';
import '../res/strings.dart';
import '../routes/app_routes.dart';

class ResponsiveScaffold extends HookWidget {
  final Widget child;

  const ResponsiveScaffold({super.key, required this.child});

  int getCurrentIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;
    print('CHECKLOCATION: $location -> ${location.startsWith('/yayasan')}');
    if (location.startsWith('/yayasan')) return 1;
    if (location.startsWith('/cabang')) return 2;
    if (location.startsWith('/sekolah')) return 3;
    if (location.startsWith('/pegawai')) return 4;
    if (location.startsWith('/kelas')) return 5;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = getCurrentIndex(context);
    final displayMode = useState<PaneDisplayMode>(PaneDisplayMode.auto);
    final topIndex = useState<int>(currentIndex);

    return NavigationView(
      transitionBuilder: (child, animation) {
        return DrillInPageTransition(animation: animation, child: child);
      },
      appBar: NavigationAppBar(
        backgroundColor: context.backgroundColor,
        height: kToolbarHeight,
        automaticallyImplyLeading: false,
        title: _buildAppBarTitle(context),
        actions: _buildAppBarActions(context),
      ),
      pane: _buildNavigationPane(context, displayMode, topIndex),
    );
  }

  Widget _buildAppBarTitle(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        if (ResponsiveBreakpoints.of(context).largerThan(MOBILE))
          Image.asset(Assets.images.logo.path, width: 40),

        Padding(
          padding: EdgeInsets.only(
            left: ResponsiveBreakpoints.of(context).isMobile ? 0.0 : 8.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                foundationName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(systemName, style: const TextStyle(fontSize: 14)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAppBarActions(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, 2),
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
              trailing: const Icon(Icons.settings),
              onPressed: () {},
              child: const Text('2024/2025'),
            ),
          if (ResponsiveBreakpoints.of(context).largerThan(TABLET))
            ShadIconButton.outline(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
              iconSize: 40,
            ),
          const SizedBox(width: 8),
          _buildUserAvatar(context),
        ],
      ),
    );
  }

  Widget _buildUserAvatar(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        FAvatar(image: NetworkImage(''), fallback: Text('UW')),
        if (ResponsiveBreakpoints.of(context).largerThan(MOBILE))
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: Text('Uun Wahyuni'),
          ),
        const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(Icons.expand_more),
        ),
      ],
    );
  }

  NavigationPane _buildNavigationPane(
    BuildContext context,
    ValueNotifier<PaneDisplayMode> displayMode,
    ValueNotifier<int> topIndex,
  ) {
    return NavigationPane(
      size: const NavigationPaneSize(openMaxWidth: 256),
      selected: topIndex.value,
      // onItemPressed: (index) {
      //   if (index == topIndex.value) {
      //     displayMode.value =
      //         displayMode.value == PaneDisplayMode.open
      //             ? PaneDisplayMode.compact
      //             : PaneDisplayMode.open;
      //   }
      // },
      onChanged: (index) {
        topIndex.value = index;
      },
      displayMode: displayMode.value,
      items: [
        PaneItem(
          icon: const Icon(FluentIcons.home),
          title: Text(S.of(context).menu_home),
          body: child,
          onTap: () => HomeRoute().go(context),
        ),
        PaneItemExpander(
          icon: const Icon(Icons.warehouse),
          title: Text(S.of(context).menu_foundation),
          body: child,
          onTap: () => FoundationRoute().go(context),
          initiallyExpanded: topIndex.value >= 2 && topIndex.value <= 3,
          items: [
            PaneItem(
              icon: const Icon(FluentIcons.branch_compare),
              title: Text(S.of(context).menu_branch),
              body: child,
              onTap: () => BranchesRoute().go(context),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.school_data_sync_logo),
              title: Text(S.of(context).menu_school),
              body: child,
              onTap: () => SchoolsRoute().go(context),
            ),
          ],
        ),
        PaneItem(
          icon: const Icon(FluentIcons.employee_self_service),
          title: Text(S.of(context).menu_employees),
          body: child,
          onTap: () => EmployeesRoute().go(context),
        ),
        PaneItem(
          icon: const Icon(FluentIcons.classroom_logo),
          title: Text(S.of(context).menu_class),
          body: child,
          onTap: () => ClassesRoute().go(context),
        ),
      ],
      footerItems: [
        PaneItem(
          icon: Icon(FluentIcons.settings),
          title: Text('Pengaturan'),
          body: SizedBox.shrink(),
        ),
        PaneItemAction(
          icon: const Icon(Icons.exit_to_app),
          title: const Text('Keluar'),
          onTap: () {},
        ),
      ],
    );
  }
}
