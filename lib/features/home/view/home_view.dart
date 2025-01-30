import 'package:ai_food/core/extensions/context_extensions.dart';
import 'package:ai_food/core/extensions/icon_extensions.dart';
import 'package:ai_food/features/home/cubit/scanner_cubit.dart';
import 'package:ai_food/features/home/cubit/scanner_state.dart';
import 'package:ai_food/features/home/view/mixin/home_view_mixin.dart';
import 'package:ai_food/features/qr/view/qr_view.dart';
import 'package:ai_food/locator.dart';
import 'package:ai_food/product/initialize/enums/mood_enums.dart';
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
          centerTitle: true,
        ),
        body: Column(
          children: [
            Center(child: ScannerButton()),
            SizedBox(height: context.height2),
            BlocBuilder<ScannerCubit, ScannerState>(
              builder: (context, state) {
                return switch (state.status) {
                  ScannerStatus.initial => CustomElevatedButton(
                      onPressed: () {},
                      child: const Text('Qr Kodunu Okutunuz'),
                    ),
                  ScannerStatus.loading => const CircularProgressIndicator(),
                  ScannerStatus.loaded => Column(
                      children: [
                        DropdownButton(
                          hint: const Text('Ruh Halinizi Seçiniz'),
                          value: state.mood,
                          items: Mood.values.map((mood) {
                            return DropdownMenuItem(
                              value: mood.name,
                              child: Text(mood.value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            if (value == null) return;
                            setState(() {
                              scannerCubit.setMood(value);
                            });
                          },
                        ),
                        CustomElevatedButton(
                          onPressed: () {},
                          child: Text(state.barcode ?? ''),
                        ),
                      ],
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
