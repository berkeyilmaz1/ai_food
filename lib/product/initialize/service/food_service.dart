import 'package:ai_food/api.dart';
import 'package:ai_food/product/initialize/service/models/food.dart';
import 'package:dio/dio.dart';

final class FoodService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: ApiKey.baseUrl,
    ),
  );

  Future<List<Food>?> getFoods(String path) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        path,
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
