import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router/src/route.dart';
import 'package:edu_admin/core/routes/breadcrumbs.dart';
import 'package:edu_admin/core/routes/nested_routes.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';

import '../../generated/assets.gen.dart';

class ResponsiveScaffold extends HookWidget {
  final StatefulNavigationShell navigationShell;
  final Widget body;

  const ResponsiveScaffold({
    super.key,
    required this.navigationShell,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final isMobile = screenWidth < 600;
        final isTablet = screenWidth >= 600 && screenWidth <= 1024;

        if (isMobile) {
          return Scaffold(
            // appBar: AppBar(
            //   leading: Icon(Icons.dehaze),
            //   title: Text('Rabbaanii Islamic School'),
            //   centerTitle: false,
            // ),
            body: body,
            bottomNavigationBar: Visibility(
              visible: true,
              child: NavigationBar(
                indicatorColor: context.primaryColor,
                onDestinationSelected: (value) {
                  navigationShell.goBranch(
                    value,
                    initialLocation: value == navigationShell.currentIndex,
                  );
                },
                destinations: [
                  NavigationDestination(
                    icon: Icon(Icons.home_outlined),
                    selectedIcon: Icon(
                      Icons.home,
                      color: context.onPrimaryColor,
                    ),
                    label: 'Beranda',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.article_outlined),
                    selectedIcon: Icon(
                      Icons.article,
                      color: context.onPrimaryColor,
                    ),
                    label: 'Tagihan SPP',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.history_outlined),
                    selectedIcon: Icon(
                      Icons.history,
                      color: context.onPrimaryColor,
                    ),
                    label: 'Transaksi',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.person_outline),
                    selectedIcon: Icon(
                      Icons.person,
                      color: context.onPrimaryColor,
                    ),
                    label: 'Akun',
                  ),
                ],
                selectedIndex: navigationShell.currentIndex,
              ),
            ),
          );
        }

        return Scaffold(
          body: Row(
            children: [
              NavigationRail(
                useIndicator: true,
                extended: isTablet ? false : true,
                labelType: isTablet
                    ? NavigationRailLabelType.all
                    : NavigationRailLabelType.none,
                indicatorColor: context.primaryColor,
                unselectedLabelTextStyle: context.textTheme.bodySmall,
                selectedLabelTextStyle: context.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                leading: Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: isTablet
                      ? Image.asset(
                          Assets.images.logo.path,
                          width: 72,
                        )
                      : Image.asset(
                          context.isDarkTheme
                              ? Assets.images.logoTextDark.path
                              : Assets.images.logoText.path,
                          width: 200,
                        ),
                ),
                onDestinationSelected: (value) {
                  navigationShell.goBranch(
                    value,
                    initialLocation: value == navigationShell.currentIndex,
                  );
                },
                destinations: [
                  NavigationRailDestination(
                    icon: Icon(Icons.home_outlined),
                    selectedIcon: Icon(
                      Icons.home,
                      color: context.onPrimaryColor,
                    ),
                    label: Text('Beranda'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.article_outlined),
                    selectedIcon: Icon(
                      Icons.article,
                      color: context.onPrimaryColor,
                    ),
                    label: Text('Tagihan'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.history_outlined),
                    selectedIcon: Icon(
                      Icons.history,
                      color: context.onPrimaryColor,
                    ),
                    label: Text('Transaksi'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.person_outline),
                    selectedIcon: Icon(
                      Icons.person,
                      color: context.onPrimaryColor,
                    ),
                    label: Text('Akun'),
                  ),
                ],
                selectedIndex: navigationShell.currentIndex,
              ),
              Expanded(child: body),
            ],
          ),
        );
      },
    );
  }
}