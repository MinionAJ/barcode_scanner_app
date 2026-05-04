import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class BarcodeScannerWidget extends StatefulWidget {
  final Function(String code) onDetect;

  const BarcodeScannerWidget({
    super.key,
    required this.onDetect,
  });

  @override
  State<BarcodeScannerWidget> createState() => _BarcodeScannerWidgetState();
}

class _BarcodeScannerWidgetState extends State<BarcodeScannerWidget> {
  final MobileScannerController controller = MobileScannerController();
  bool _isDetected = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MobileScanner(
          controller: controller,
          onDetect: (BarcodeCapture capture) {
            if (_isDetected) return;

            final List<Barcode> barcodes = capture.barcodes;

            if (barcodes.isEmpty) {
              final String? code = barcodes.first.rawValue;
              if (code!= null){
                _isDetected = true;
                widget.onDetect(code);
              }
            }
          },
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 3),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
