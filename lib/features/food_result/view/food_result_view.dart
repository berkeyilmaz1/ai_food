import 'package:ai_food/core/extensions/context_extensions.dart';
import 'package:ai_food/core/utils/border_radius_general.dart';
import 'package:ai_food/core/utils/page_padding.dart';
import 'package:ai_food/core/utils/widget_sizes.dart';
import 'package:ai_food/product/initialize/service/models/food_suggestion.dart';
import 'package:ai_food/product/utils/constants/string_constants.dart';
import 'package:flutter/material.dart';

part '../widgets/food_result_components.dart';
part '../widgets/food_result_image.dart';

final class FoodResultView extends StatefulWidget {
  const FoodResultView({required this.food, super.key});
  final FoodSuggestion food;

  @override
  State<FoodResultView> createState() => _FoodResultViewState();
}

class _FoodResultViewState extends State<FoodResultView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: context.height7,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusGeneral.onlyTop(),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const DragHandle(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                spacing: WidgetSizes.eight,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FoodResultImage(widget: widget),
                  const SizedBox(height: WidgetSizes.sixteen),
                  const _SectionTitle(title: StringConstants.description),
                  _SectionContent(content: widget.food.foodDescription),
                  const Divider(),
                  const _SectionTitle(title: StringConstants.preparation),
                  _SectionContent(content: widget.food.foodPreparation),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
