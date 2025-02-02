import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ingredient.g.dart';

@JsonSerializable()
final class Ingredient with EquatableMixin {
  Ingredient({
    required this.id,
    required this.aisle,
    required this.image,
    required this.consistency,
    required this.name,
    required this.nameClean,
    required this.original,
    required this.originalName,
    required this.amount,
    required this.unit,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
  final int? id;
  final String? aisle;
  final String? image;
  final String? consistency;
  final String? name;
  final String? nameClean;
  final String? original;
  final String? originalName;
  final double? amount;
  final String? unit;

  @override
  List<Object?> get props => [
        id,
        aisle,
        image,
        consistency,
        name,
        nameClean,
        original,
        originalName,
        amount,
        unit,
      ];

  Ingredient copyWith({
    int? id,
    String? aisle,
    String? image,
    String? consistency,
    String? name,
    String? nameClean,
    String? original,
    String? originalName,
    double? amount,
    String? unit,
  }) {
    return Ingredient(
      id: id ?? this.id,
      aisle: aisle ?? this.aisle,
      image: image ?? this.image,
      consistency: consistency ?? this.consistency,
      name: name ?? this.name,
      nameClean: nameClean ?? this.nameClean,
      original: original ?? this.original,
      originalName: originalName ?? this.originalName,
      amount: amount ?? this.amount,
      unit: unit ?? this.unit,
    );
  }
}
