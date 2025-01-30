import 'package:ai_food/product/initialize/service/models/food.dart';
import 'package:equatable/equatable.dart';

enum ScannerStatus { initial, loading, loaded, error }

final class ScannerState extends Equatable {
  const ScannerState({
    this.status = ScannerStatus.initial,
    this.isScanned = false,
    this.errorMessage,
    this.barcode,
    this.mood,
    this.foods = const [],
  });

  final ScannerStatus status;
  final String? errorMessage;
  final String? barcode;
  final String? mood;
  final bool isScanned;
  final List<Food>? foods;

  @override
  List<Object?> get props =>
      [status, errorMessage, barcode, mood, isScanned, foods];

  ScannerState copyWith({
    ScannerStatus? status,
    String? errorMessage,
    String? barcode,
    String? mood,
    bool? isScanned,
    List<Food>? foods,
  }) {
    return ScannerState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      barcode: barcode ?? this.barcode,
      mood: mood ?? this.mood,
      isScanned: isScanned ?? this.isScanned,
      foods: foods ?? this.foods,
    );
  }
}
