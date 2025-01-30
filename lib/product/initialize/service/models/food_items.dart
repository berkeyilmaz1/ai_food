import 'package:ai_food/product/initialize/service/models/food.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'food_items.g.dart';

@JsonSerializable()
final class FoodItems with EquatableMixin {
  FoodItems({
    this.foodItems,
  });

  factory FoodItems.fromJson(Map<String, dynamic> json) =>
      _$FoodItemsFromJson(json);
  final List<Food>? foodItems;

  Map<String, dynamic> toJson() => _$FoodItemsToJson(this);

  @override
  List<Object?> get props => [foodItems];

  FoodItems copyWith({
    List<Food>? foodItems,
  }) {
    return FoodItems(
      foodItems: foodItems ?? this.foodItems,
    );
  }
}
