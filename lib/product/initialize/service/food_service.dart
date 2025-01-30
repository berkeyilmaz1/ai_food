import 'package:ai_food/product/initialize/service/models/food.dart';
import 'package:dio/dio.dart';
///TODO : FIX THIS 
final class FoodService {
  final Dio _dio = Dio();

  Future<List<Food>?> getFoods() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        'https://api.spoonacular.com/recipes/random?number=1&apiKey=ed4de0efa3284a088b1afb4549a2a666',
      );

      if (response.data == null) return null;

      final foods = response.data!['recipes'] as List;

      return foods
          .map((e) => Food.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw DioException(
        requestOptions: e.requestOptions,
        message: e.message,
      );
    }
  }
}
