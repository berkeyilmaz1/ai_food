import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ingredient.g.dart';

@JsonSerializable()
final class Ingredient extends Equatable {
  const Ingredient({
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
    required this.meta,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
  final int id;
  final String aisle;
  final String image;
  final String consistency;
  final String name;
  final String nameClean;
  final String original;
  final String originalName;
  final double amount;
  final String unit;
  final List<dynamic> meta;

  Map<String, dynamic> toJson() => _$IngredientToJson(this);

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
        meta,
      ];
}
