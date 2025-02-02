import 'package:equatable/equatable.dart';

final class FoodSuggestion extends Equatable {
  const FoodSuggestion({
    required this.foodName,
    required this.foodDescription,
    required this.foodPreparation,
    required this.foodImage,
  });

  final String foodName;
  final String foodDescription;
  final String foodPreparation;
  final String foodImage;

  @override
  List<Object?> get props =>
      [foodName, foodDescription, foodPreparation, foodImage];
}
