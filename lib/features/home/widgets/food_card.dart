import 'package:ai_food/core/utils/border_radius_general.dart';
import 'package:ai_food/core/utils/page_padding.dart';
import 'package:ai_food/core/utils/widget_sizes.dart';
import 'package:ai_food/product/initialize/service/models/food.dart';
import 'package:flutter/material.dart';

final class FoodCard extends StatelessWidget {
  const FoodCard({
    required this.food,
    super.key,
  });
  final Food food;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const PagePadding.all(),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusGeneral.allLow(),
        ),
        child: Column(
          spacing: WidgetSizes.eight,
          children: [
            Text(
              food.title ?? '',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: Padding(
                padding: const PagePadding.allSmall(),
                child: ClipRRect(
                  borderRadius: const BorderRadiusGeneral.allLow(),
                  child: Image.network(
                    errorBuilder: (context, error, stackTrace) =>
                        const SizedBox.shrink(),
                    food.image ?? '',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
