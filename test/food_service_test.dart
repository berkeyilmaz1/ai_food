import 'package:ai_food/product/initialize/service/food_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final FoodService foodService;
  const path = '';
  setUp(() {
    foodService = FoodService();
  });
  test('Food Service Test', () async {
    final response = await foodService.getFoods(path);
    expect(response, isNotNull);
  });
}
