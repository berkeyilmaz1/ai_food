// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodItems _$FoodItemsFromJson(Map<String, dynamic> json) => FoodItems(
      foodItems: (json['foodItems'] as List<dynamic>?)
          ?.map((e) => Food.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FoodItemsToJson(FoodItems instance) => <String, dynamic>{
      'foodItems': instance.foodItems,
    };
