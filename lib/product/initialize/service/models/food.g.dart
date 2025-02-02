// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Food _$FoodFromJson(Map<String, dynamic> json) => Food(
      vegetarian: json['vegetarian'] as bool?,
      vegan: json['vegan'] as bool?,
      glutenFree: json['glutenFree'] as bool?,
      dairyFree: json['dairyFree'] as bool?,
      veryHealthy: json['veryHealthy'] as bool?,
      cookingMinutes: (json['cookingMinutes'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      readyInMinutes: (json['readyInMinutes'] as num?)?.toInt(),
      sourceUrl: json['sourceUrl'] as String?,
      image: json['image'] as String?,
      summary: json['summary'] as String?,
      cuisines: (json['cuisines'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      dishTypes: (json['dishTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      diets:
          (json['diets'] as List<dynamic>?)?.map((e) => e as String).toList(),
      spoonacularSourceUrl: json['spoonacularSourceUrl'] as String?,
      instructions: json['instructions'] as String?,
      extendedIngredients: (json['extendedIngredients'] as List<dynamic>?)
          ?.map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FoodToJson(Food instance) => <String, dynamic>{
      'vegetarian': instance.vegetarian,
      'vegan': instance.vegan,
      'glutenFree': instance.glutenFree,
      'dairyFree': instance.dairyFree,
      'veryHealthy': instance.veryHealthy,
      'cookingMinutes': instance.cookingMinutes,
      'id': instance.id,
      'title': instance.title,
      'readyInMinutes': instance.readyInMinutes,
      'sourceUrl': instance.sourceUrl,
      'image': instance.image,
      'summary': instance.summary,
      'cuisines': instance.cuisines,
      'dishTypes': instance.dishTypes,
      'diets': instance.diets,
      'spoonacularSourceUrl': instance.spoonacularSourceUrl,
      'instructions': instance.instructions,
      'extendedIngredients': instance.extendedIngredients,
    };
