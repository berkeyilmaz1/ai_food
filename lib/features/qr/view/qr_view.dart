import 'package:ai_food/features/home/cubit/scanner_cubit.dart';
import 'package:ai_food/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrView extends StatefulWidget {
  const QrView({super.key});

  @override
  State<QrView> createState() => _QrViewState();
}

class _QrViewState extends State<QrView> {
  final MobileScannerController _controller = MobileScannerController();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scannerCubit = locator<ScannerCubit>();

    return BlocProvider.value(
      value: scannerCubit,
      child: Scaffold(
        body: MobileScanner(
          controller: _controller,
          onDetect: (capture) {
            try {
              scannerCubit.changeLoading();
              final barcodes = capture.barcodes;
              if (barcodes.isNotEmpty && barcodes.first.rawValue == null) {
                return scannerCubit.changeError('Barcode not found');
              }
              scannerCubit.getBarcode(barcodes.first.rawValue!);
              print('popppppppppp');
              Navigator.of(context).pop();
            } catch (e) {
              print('try catch $e');
            }
          },
        ),
      ),
    );
  }
}
