import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ClassroomScreen extends HookWidget {
  const ClassroomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClassRooms'),
      ),
    );
  }
}