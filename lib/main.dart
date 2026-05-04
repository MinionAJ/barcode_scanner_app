import 'package:flutter/material.dart';
import 'scanner/barcode_scanner_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScannerPage(),
    );
  }
}

class ScannerPage extends StatelessWidget {
  const ScannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scanner')),
      body: BarcodeScannerWidget(
        onDetect: (code) {
          print('Código detectado: $code');

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Código: $code')),
          );
        },
      ),
    );
  }
}