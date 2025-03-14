import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TransactionScreen extends HookWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Riwayat Pembayaran')));
  }
}
