import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StudentsScreen extends HookWidget {
  const StudentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Siswa')));
  }
}
