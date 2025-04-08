import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:forui/forui.dart';
import 'package:forui_hooks/forui_hooks.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../routes/app_routes.dart';

class CustomMenu {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;
  final bool isLoading;

  CustomMenu({
    required this.title,
    required this.icon,
    this.onTap,
    this.isLoading = false,
  });
}

class CustomAction {
  final String title;
  final SvgAsset icon;
  final FBaseButtonStyle style;
  final Function(int index)? onTap;

  CustomAction({
    required this.title,
    required this.icon,
    required this.style,
    this.onTap,
  });
}

class CustomPlutoTable extends HookWidget {
  final String title;
  final bool isLoading;
  final List<PlutoColumn> columns;
  final List<PlutoRow> rows;
  final List<CustomMenu> menus;
  final List<CustomAction> actions;
  final double actionWidth;
  final double cellFontSize;
  final Function(PlutoGridStateManager manager)? onLoaded;
  final Function(PlutoGridOnChangedEvent event)? onChanged;

  const CustomPlutoTable({
    super.key,
    required this.title,
    required this.isLoading,
    required this.menus,
    required this.actions,
    required this.columns,
    required this.rows,
    this.onLoaded,
    this.onChanged,
    this.actionWidth = 120,
    this.cellFontSize = 13,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useFPopoverController();

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildHeader(context, controller),
        const SizedBox(height: 8),
        _buildDataTable(context),
      ],
    );
  }

  Widget _buildHeader(BuildContext context, FPopoverController controller) {
    return ShadCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildBreadcrumb(context),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Text(
                  'DATA ${title.toUpperCase()}',
                  style: context.shadTextTheme.h2,
                ),
              ),
              if (ResponsiveBreakpoints.of(context).isMobile)
                _buildMobileMenu(context, controller),
            ],
          ),
          if (ResponsiveBreakpoints.of(context).largerThan(MOBILE))
            _buildDesktopActions(context),
        ],
      ),
    );
  }

  Widget _buildBreadcrumb(BuildContext context) {
    return Transform.translate(
      offset: const Offset(-4, 0),
      child: FBreadcrumb(
        children: [
          FBreadcrumbItem(
            onPress: () {
              HomeRoute().go(context);
            },
            child: Text('Beranda'),
          ),
          FBreadcrumbItem(current: true, child: Text(title)),
        ],
      ),
    );
  }

  Widget _buildMobileMenu(BuildContext context, FPopoverController controller) {
    return FPopoverMenu(
      popoverController: controller,
      menuAnchor: Alignment.topRight,
      childAnchor: Alignment.bottomRight,
      menu: [
        FTileGroup(
          children:
              menus.map((menu) {
                return FTile(
                  prefixIcon:
                      menu.isLoading
                          ? SizedBox.square(
                            dimension: 16,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: context.primaryColor,
                            ),
                          )
                          : Icon(menu.icon, color: context.primaryColor),
                  title: Text(menu.title),
                  onPress: menu.onTap,
                );
              }).toList(),
        ),
      ],
      child: IconButton(
        icon: FIcon(FAssets.icons.ellipsis, color: context.primaryColor),
        onPressed: controller.toggle,
      ),
    );
  }

  Widget _buildDesktopActions(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Wrap(
        runSpacing: 8,
        children:
            menus.map((menu) {
              return ShadButton(
                // padding: EdgeInsets.symmetric(vertical: 0),
                leading:
                    menu.isLoading
                        ? SizedBox.square(
                          dimension: 16,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: context.onPrimaryColor,
                          ),
                        )
                        : Icon(menu.icon),
                onPressed: menu.onTap,
                child: Text(menu.title),
              );
            }).toList(),
      ),
    );
  }

  Widget _buildDataTable(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: Theme(
        data: context.isDarkTheme ? ThemeData.dark() : ThemeData.light(),
        child: Container(
          height: 620,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: PlutoGrid(
            columns: [
              PlutoColumn(
                title: 'No',
                field: 'no',
                type: PlutoColumnType.number(),
                enableContextMenu: false,
                enableDropToResize: false,
                suppressedAutoSize: true,
                titleTextAlign: PlutoColumnTextAlign.center,
                textAlign: PlutoColumnTextAlign.center,
                width: 60,
              ),
              ...columns,
              PlutoColumn(
                title: 'Aksi',
                field: 'action',
                enableContextMenu: false,
                enableDropToResize: false,
                suppressedAutoSize: true,
                width: actionWidth,
                type: PlutoColumnType.text(),
                renderer: (rendererContext) {
                  return ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    // spacing: 4,
                    children:
                        actions
                            .map(
                              (action) => ShadTooltip(
                                builder:
                                    (BuildContext context) =>
                                        Text(action.title),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 2,
                                    vertical: 8,
                                  ),
                                  child: FButton.icon(
                                    style: action.style,
                                    onPress: () {
                                      action.onTap?.call(
                                        rendererContext.rowIdx,
                                      );
                                    },
                                    child: FIcon(action.icon, size: 14),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                  );
                },
              ),
            ],
            rows: rows,
            onLoaded: (event) {
              onLoaded?.call(event.stateManager);
              event.stateManager.setShowColumnFilter(true);
            },
            onChanged: onChanged,
            mode: PlutoGridMode.readOnly,
            configuration:
                context.isDarkTheme
                    ? PlutoGridConfiguration.dark(
                      localeText: const PlutoGridLocaleText(
                        filterContains: 'Cari...',
                      ),
                      columnSize: const PlutoGridColumnSizeConfig(
                        autoSizeMode: PlutoAutoSizeMode.scale,
                      ),
                      style: PlutoGridStyleConfig.dark(
                        activatedBorderColor: context.primaryColor,
                        cellTextStyle: TextStyle(fontSize: cellFontSize),
                      ),
                    )
                    : PlutoGridConfiguration(
                      localeText: PlutoGridLocaleText(
                        filterContains: 'Cari...',
                      ),
                      columnSize: PlutoGridColumnSizeConfig(
                        autoSizeMode: PlutoAutoSizeMode.scale,
                        // resizeMode: PlutoResizeMode.normal,
                      ),
                      style: PlutoGridStyleConfig(
                        activatedBorderColor: context.primaryColor,
                        iconSize: 16,
                        columnContextIcon: Icons.unfold_more,
                        // cellTextStyle: TextStyle(fontSize: cellFontSize),
                      ),
                    ),
            createFooter: (stateManager) {
              stateManager.setPageSize(100, notify: false);
              return PlutoPagination(stateManager);
            },
          ),
        ),
      ),
    );
  }
}
