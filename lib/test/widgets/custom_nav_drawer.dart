import 'package:edu_admin/core/utils/ui_extensions.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../generated/assets.gen.dart';
import '../../generated/l10n.dart';

class MenuItem {
  final String title;
  final IconData icon;
  final List<MenuItem>? children;

  MenuItem({required this.title, required this.icon, this.children});
}

class CustomNavDrawer extends StatelessWidget {
  const CustomNavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final menuItems = [
      MenuItem(title: S.of(context).menu_home, icon: Icons.home),
      MenuItem(
        title: S.of(context).menu_school,
        icon: Icons.school,
        children: [
          MenuItem(title: S.of(context).menu_foundation, icon: Icons.circle),
          MenuItem(title: S.of(context).menu_branch, icon: Icons.circle),
          MenuItem(title: S.of(context).menu_school, icon: Icons.circle),
          MenuItem(title: S.of(context).menu_division, icon: Icons.circle),
          MenuItem(title: S.of(context).menu_structure, icon: Icons.circle),
        ],
      ),
      MenuItem(title: S.of(context).menu_employees, icon: Icons.person),
      MenuItem(title: S.of(context).menu_students, icon: Icons.school),
      MenuItem(title: S.of(context).menu_announcements, icon: Icons.info),
      MenuItem(
        title: S.of(context).menu_class,
        icon: Icons.class_,
        children: [
          MenuItem(title: S.of(context).menu_classroom, icon: Icons.circle),
          MenuItem(
            title: S.of(context).menu_class_promotion,
            icon: Icons.circle,
          ),
        ],
      ),
      MenuItem(
        title: S.of(context).menu_payments,
        icon: Icons.monetization_on,
        children: [
          MenuItem(title: S.of(context).menu_tuition_fees, icon: Icons.circle),
          MenuItem(title: S.of(context).menu_other_fees, icon: Icons.circle),
          MenuItem(
            title: S.of(context).menu_custom_tuition,
            icon: Icons.circle,
          ),
          MenuItem(
            title: S.of(context).menu_manual_payment,
            icon: Icons.circle,
          ),
          MenuItem(
            title: S.of(context).menu_create_invoice,
            icon: Icons.circle,
          ),
          MenuItem(title: S.of(context).menu_bulk_invoice, icon: Icons.circle),
          MenuItem(
            title: S.of(context).menu_payment_history,
            icon: Icons.circle,
          ),
        ],
      ),
      MenuItem(
        title: S.of(context).menu_reports,
        icon: Icons.insert_chart,
        children: [
          MenuItem(
            title: S.of(context).menu_student_attendance,
            icon: Icons.circle,
          ),
          MenuItem(
            title: S.of(context).menu_employee_attendance,
            icon: Icons.circle,
          ),
          MenuItem(
            title: S.of(context).menu_tuition_payments,
            icon: Icons.circle,
          ),
          MenuItem(title: S.of(context).menu_others, icon: Icons.circle),
          MenuItem(
            title: S.of(context).menu_tuition_summary,
            icon: Icons.circle,
          ),
          MenuItem(
            title: S.of(context).menu_attendance_summary,
            icon: Icons.circle,
          ),
        ],
      ),
      MenuItem(
        title: S.of(context).menu_settings,
        icon: Icons.settings,
        children: [
          MenuItem(
            title: S.of(context).menu_settings_payments,
            icon: Icons.circle,
          ),
          MenuItem(title: S.of(context).menu_academic_year, icon: Icons.circle),
        ],
      ),
    ];


    return Drawer(
      width: 260,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final item = menuItems[index];
          return item.children != null
              ? _buildExpansionTile(index, item, context, hasChildren: true)
              : _buildMenuItem(index, item, context, false);
        },
      ),
    );
  }

  Widget _buildExpansionTile(
    int index,
    MenuItem item,
    BuildContext context, {
    bool hasChildren = true,
  }) {
    return ExpansionTile(
      leading: Icon(item.icon, size: 20, color: context.iconColor),
      title: Text("$index. ${item.title}", style: context.shadTextTheme.list),
      children:
          item.children!.asMap().entries.map((entry) {
            return _buildMenuItem(entry.key, entry.value, context, hasChildren);
          }).toList(),
    );
  }

  Widget _buildMenuItem(
    int index,
    MenuItem item,
    BuildContext context,
    bool hasChildren,
  ) {
    return ListTile(
      leading: Icon(
        item.icon,
        size: hasChildren ? 14 : 20,
        color: context.iconColor,
      ),
      title: Text("$index. ${item.title}", style: context.shadTextTheme.small),
      onTap: () => Navigator.pop(context),
    );
  }
}
