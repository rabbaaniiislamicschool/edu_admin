import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PaymentsScreen extends HookWidget {
  const PaymentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Pembayaran')));
  }
}
