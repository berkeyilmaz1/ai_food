import 'package:ai_food/core/service/gemini_config.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

final class GeminiManager {
  GeminiManager() : _model = GeminiConfig().createGeminiModel();

  final GenerativeModel _model;

  Future<dynamic> executePrompt(
    List<String> menuItems,
    String mood,
  ) async {
    final prompt = _generatePrompt(menuItems, mood);
    print('prompt: $prompt');
    final response = await _model.generateContent([Content.text(prompt)]);

    return response.text;
  }

  String _generatePrompt(
    List<String> menuItems,
    String mood,
  ) {
    return '''

    Bugün kendimi $mood hissediyorum ve şu menüden bir şeyler yemek istiyorum: $menuItems.

    Lütfen menüden bir yemek önerisi ver.
    JSON yanıtında foodName, foodDescription, foodPreparation ve foodImage alanlarını döndür.

    foodDescription, foodPreparation alanlarını Türkçe dilinde yaz.
    ''';
  }
}
