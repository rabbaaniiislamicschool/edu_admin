import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:edu_admin/core/utils/ui_extensions.dart';

class Breadcrumbs extends StatelessWidget {
  const Breadcrumbs({super.key});

  @override
  Widget build(BuildContext context) {
    final segments = GoRouter.of(context).routerDelegate.currentConfiguration.uri.toString().split('/');
    List<Widget> breadcrumbs = [];
    String path = '';

    for (int i = 1; i < segments.length; i++) {
      path += '/${segments[i]}';
      breadcrumbs.add(
        InkWell(
          onTap: () => context.pushNamed(path),
          child: Text(
            segments[i],
            style: TextStyle(
              color: context.primaryColor,
            ),
          ),
        ),
      );
      if (i < segments.length - 1) {
        breadcrumbs.add(Text(' > '));
      }
    }

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(children: breadcrumbs),
    );
  }
}
