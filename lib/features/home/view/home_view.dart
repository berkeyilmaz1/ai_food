import 'package:ai_food/core/extensions/context_extensions.dart';
import 'package:ai_food/core/extensions/icon_extensions.dart';
import 'package:ai_food/features/home/cubit/scanner_cubit.dart';
import 'package:ai_food/features/home/cubit/scanner_state.dart';
import 'package:ai_food/features/home/view/mixin/home_view_mixin.dart';
import 'package:ai_food/features/home/widgets/food_card.dart';
import 'package:ai_food/features/home/widgets/mood_selector.dart';
import 'package:ai_food/features/qr/view/qr_view.dart';
import 'package:ai_food/locator.dart';
import 'package:ai_food/product/utils/constants/icon_constants.dart';
import 'package:ai_food/product/utils/constants/string_constants.dart';
import 'package:ai_food/product/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part '../widgets/scanner_button.dart';

final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: scannerCubit,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(StringConstants.appTitle),
        ),
        body: BlocBuilder<ScannerCubit, ScannerState>(
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!state.isScanned)
                    ScannerButton()
                  else
                    Expanded(
                      flex: 2,
                      child: PageView.builder(
                        itemCount: state.foods?.length ?? 0,
                        itemBuilder: (context, index) => FoodCard(
                          food: state.foods![index],
                        ),
                      ),
                    ),
                  const Spacer(),
                  switch (state.status) {
                    ScannerStatus.initial => CustomElevatedButton(
                        onPressed: () {},
                        child: const Text(StringConstants.qrCodeButton),
                      ),
                    ScannerStatus.loading => const CircularProgressIndicator(),
                    ScannerStatus.loaded => const MoodSelector(),
                    ScannerStatus.error => Text(state.errorMessage ?? ''),
                  },
                  const Spacer(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
