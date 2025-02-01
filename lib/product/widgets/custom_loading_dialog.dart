import 'dart:async';

import 'package:flutter/material.dart';

final class CustomLoadingDialog extends StatelessWidget {
  const CustomLoadingDialog({super.key});

  static Future<T> show<T>({
    required BuildContext context,
    required Future<T> future,
  }) async {
    unawaited(
      showDialog<CustomLoadingDialog>(
        context: context,
        barrierDismissible: false,
        builder: (context) => const CustomLoadingDialog(),
      ),
    );
    final result = await future;
    if (context.mounted) {
      Navigator.of(context).pop();
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
