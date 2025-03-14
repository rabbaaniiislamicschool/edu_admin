import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ClassPromotionScreen extends HookWidget {
  const ClassPromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class Promotion'),
      ),
    );
  }
}