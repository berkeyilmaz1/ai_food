import 'package:ai_food/core/utils/widget_sizes.dart';
import 'package:ai_food/features/home/cubit/scanner_cubit.dart';
import 'package:ai_food/features/home/cubit/scanner_state.dart';
import 'package:ai_food/locator.dart';
import 'package:ai_food/product/initialize/enums/mood_enums.dart';
import 'package:ai_food/product/utils/constants/string_constants.dart';
import 'package:ai_food/product/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoodSelector extends StatefulWidget {
  const MoodSelector({
    super.key,
  });

  @override
  State<MoodSelector> createState() => _MoodSelectorState();
}

class _MoodSelectorState extends State<MoodSelector> {
  final _scannerCubit = locator<ScannerCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScannerCubit, ScannerState>(
      builder: (context, state) {
        return Column(
          spacing: WidgetSizes.sixteen,
          children: [
            DropdownButton(
              hint: const Text(StringConstants.selectMood),
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
                  _scannerCubit.setMood(value);
                });
              },
            ),
            CustomElevatedButton(
              onPressed: () {},
              child: const Text(StringConstants.getRecommendation),
            ),
            GestureDetector(
              onTap: () {
                _scannerCubit.reScan();
                setState(() {});
              },
              child: Text(
                StringConstants.reScan,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Colors.grey.shade500,
                    ),
              ),
            ),
          ],
        );
      },
    );
  }
}
