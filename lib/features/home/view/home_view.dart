import 'package:ai_food/core/extensions/context_extensions.dart';
import 'package:ai_food/core/extensions/icon_extensions.dart';
import 'package:ai_food/features/home/cubit/scannar_cubit.dart';
import 'package:ai_food/features/home/cubit/scanner_state.dart';
import 'package:ai_food/features/home/view/mixin/home_view_mixin.dart';
import 'package:ai_food/features/qr/view/qr_view.dart';
import 'package:ai_food/locator.dart';
import 'package:ai_food/product/utils/constants/icon_constants.dart';
import 'package:ai_food/product/utils/constants/string_constants.dart';
import 'package:ai_food/product/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  late final ScannerCubit _scannerCubit;
  ScannerCubit get scannerCubit => _scannerCubit;

  @override
  void initState() {
    super.initState();
    _scannerCubit = ScannerCubit();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: locator<ScannerCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(StringConstants.appTitle),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const Center(child: ScannerButton()),
            SizedBox(height: context.height2),
            BlocBuilder<ScannerCubit, ScannerState>(
              builder: (context, state) {
                print('state status:${state.status} barcode:${state.barcode}');
                return switch (state.status) {
                  ScannerStatus.initial => const SizedBox.shrink(),
                  ScannerStatus.loading => const CircularProgressIndicator(),
                  ScannerStatus.loaded => CustomElevatedButton(
                      onPressed: () {},
                      child: Text(state.barcode ?? ''),
                    ),
                  ScannerStatus.error => Text(state.errorMessage ?? ''),
                };
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ScannerButton extends StatelessWidget {
  const ScannerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute<QrView>(builder: (_) => const QrView()),
        );
      },
      icon: IconConstants.scanner.toIcon,
      iconSize: context.width5,
    );
  }
}
