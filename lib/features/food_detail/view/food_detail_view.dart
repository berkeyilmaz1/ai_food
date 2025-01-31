import 'package:ai_food/core/utils/page_padding.dart';
import 'package:ai_food/core/utils/widget_sizes.dart';
import 'package:ai_food/product/initialize/service/models/food.dart';
import 'package:ai_food/product/utils/constants/string_constants.dart';
import 'package:flutter/material.dart';

part '../widgets/food_detail_app_bar.dart';
part '../widgets/food_detail_components.dart';
part '../widgets/minute_info_tile.dart';

final class FoodDetailView extends StatelessWidget {
  const FoodDetailView({required this.food, super.key});

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const FoodDetailAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FoodDetailImage(
              food: food,
            ),
            DetailComponents(food: food),
          ],
        ),
      ),
    );
  }
}
