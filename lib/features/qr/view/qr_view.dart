import 'package:ai_food/core/extensions/context_extensions.dart';
import 'package:ai_food/features/qr/view/mixin/qr_view_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_scanner_overlay/qr_scanner_overlay.dart';

class QrView extends StatefulWidget {
  const QrView({super.key});

  @override
  State<QrView> createState() => _QrViewState();
}

class _QrViewState extends State<QrView> with QrViewMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: scannerCubit,
      child: Scaffold(
        body: MobileScanner(
          controller: controller,
          onDetect: onDetect,
          overlayBuilder: (context, constraints) => QRScannerOverlay(
            scanAreaHeight: context.height4,
            scanAreaWidth: context.width7,
          ),
        ),
      ),
    );
  }
}
