import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'food.g.dart';

@JsonSerializable()
final class Food with EquatableMixin {
  Food({
    this.vegetarian,
    this.vegan,
    this.glutenFree,
    this.dairyFree,
    this.veryHealthy,
    this.cookingMinutes,
    this.id,
    this.title,
    this.readyInMinutes,
    this.sourceUrl,
    this.image,
    this.summary,
    this.cuisines,
    this.dishTypes,
    this.diets,
    this.spoonacularSourceUrl,
  });

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
  final bool? vegetarian;
  final bool? vegan;
  final bool? glutenFree;
  final bool? dairyFree;
  final bool? veryHealthy;
  final int? cookingMinutes;
  final int? id;
  final String? title;
  final int? readyInMinutes;
  final String? sourceUrl;
  final String? image;
  final String? summary;
  final List<String>? cuisines;
  final List<String>? dishTypes;
  final List<String>? diets;
  final String? spoonacularSourceUrl;

  Map<String, dynamic> toJson() => _$FoodToJson(this);

  @override
  List<Object?> get props => [
        vegetarian,
        vegan,
        glutenFree,
        dairyFree,
        veryHealthy,
        cookingMinutes,
        id,
        title,
        readyInMinutes,
        sourceUrl,
        image,
        summary,
        cuisines,
        dishTypes,
        diets,
        spoonacularSourceUrl,
      ];

  Food copyWith({
    bool? vegetarian,
    bool? vegan,
    bool? glutenFree,
    bool? dairyFree,
    bool? veryHealthy,
    int? cookingMinutes,
    int? id,
    String? title,
    int? readyInMinutes,
    String? sourceUrl,
    String? image,
    String? summary,
    List<String>? cuisines,
    List<String>? dishTypes,
    List<String>? diets,
    String? spoonacularSourceUrl,
  }) {
    return Food(
      vegetarian: vegetarian ?? this.vegetarian,
      vegan: vegan ?? this.vegan,
      glutenFree: glutenFree ?? this.glutenFree,
      dairyFree: dairyFree ?? this.dairyFree,
      veryHealthy: veryHealthy ?? this.veryHealthy,
      cookingMinutes: cookingMinutes ?? this.cookingMinutes,
      id: id ?? this.id,
      title: title ?? this.title,
      readyInMinutes: readyInMinutes ?? this.readyInMinutes,
      sourceUrl: sourceUrl ?? this.sourceUrl,
      image: image ?? this.image,
      summary: summary ?? this.summary,
      cuisines: cuisines ?? this.cuisines,
      dishTypes: dishTypes ?? this.dishTypes,
      diets: diets ?? this.diets,
      spoonacularSourceUrl: spoonacularSourceUrl ?? this.spoonacularSourceUrl,
    );
  }

  List<String> get dietaryFlags {
    return [
      if (vegetarian == true) 'Vegetarian',
      if (vegan == true) 'Vegan',
      if (glutenFree == true) 'Gluten Free',
      if (dairyFree == true) 'Dairy Free',
      if (veryHealthy == true) 'Healthy',
    ];
  }
}
