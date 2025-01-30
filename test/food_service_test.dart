import 'package:ai_food/product/initialize/service/food_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final FoodService foodService;

  setUp(() {
    foodService = FoodService();
  });
  test('Food Service Test', () async {
    final response = await foodService.getFoods();
    expect(response, isNotNull);
  });
}
