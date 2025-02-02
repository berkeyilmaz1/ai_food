import 'package:ai_food/features/home/cubit/scanner_cubit.dart';
import 'package:ai_food/features/qr/view/qr_view.dart';
import 'package:ai_food/locator.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

mixin QrViewMixin on State<QrView> {
  late final MobileScannerController _controller;
  MobileScannerController get controller => _controller;
  final scannerCubit = locator<ScannerCubit>();
  @override
  void initState() {
    super.initState();
    _controller = MobileScannerController(
      detectionSpeed: DetectionSpeed.noDuplicates,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onDetect(BarcodeCapture capture) {
    final barcodes = capture.barcodes;
    if (barcodes.isNotEmpty && barcodes.first.rawValue == null) {
      return scannerCubit.changeError('Barcode not found');
    }

  
    scannerCubit
      ..getBarcode(barcodes.first.rawValue!)
      ..getFoods(barcodes.first.rawValue!);
    _controller.stop();
    Navigator.pop(context);
  }
}
