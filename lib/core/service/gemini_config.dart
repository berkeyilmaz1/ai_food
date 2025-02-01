import 'package:ai_food/product/initialize/config/app_environment.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

final class GeminiConfig {
  final modelName = 'gemini-1.5-pro';
  final responseMimeType = 'application/json';
  GenerativeModel createGeminiModel() {
    return GenerativeModel(
      model: modelName,
      apiKey: AppEnvironmentItems.geminiApi.value,
      generationConfig: createGenerationConfig(),
    );
  }

  GenerationConfig createGenerationConfig() {
    return GenerationConfig(
      responseMimeType: responseMimeType,
    );
  }
}
