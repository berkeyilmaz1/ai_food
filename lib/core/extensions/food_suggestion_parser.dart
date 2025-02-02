import 'dart:convert';

import 'package:ai_food/product/initialize/service/models/food_suggestion.dart';

extension FoodSuggestionParser on String {
  FoodSuggestion toFoodSuggestion() {
    try {
      final json = jsonDecode(this) as Map<String, dynamic>;

      return FoodSuggestion(
        foodName: json['foodName'] as String,
        foodDescription: json['foodDescription'] as String,
        foodPreparation: json['foodPreparation'] as String,
        foodImage: json['foodImage'] as String,
      );
    } catch (e) {
      throw Exception('Parsing Error');
    }
  }
}
