import 'package:ai_food/features/home/cubit/scanner_state.dart';
import 'package:ai_food/product/initialize/service/food_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class ScannerCubit extends Cubit<ScannerState> {
  ScannerCubit() : super(const ScannerState());
  final FoodService _foodService = FoodService();
  void getBarcode(String barcode) {
    emit(
      state.copyWith(
        status: ScannerStatus.loaded,
        barcode: barcode,
        isScanned: true,
      ),
    );
  }

  Future<void> getFoods(String path) async {
    emit(state.copyWith(status: ScannerStatus.loading));
    final response = await _foodService.getFoods(path);
    emit(
      state.copyWith(
        status: ScannerStatus.loaded,
        foods: response,
      ),
    );
  }

  void reScan() {
    emit(
      state.copyWith(
        isScanned: false,
        status: ScannerStatus.initial,
        barcode: '',
        errorMessage: '',
        // ignore: avoid_redundant_argument_values
        mood: null,
        foods: [],
      ),
    );
  }

  void setMood(String mood) {
    emit(state.copyWith(mood: mood));
  }

  void changeLoading() {
    emit(state.copyWith(status: ScannerStatus.loading));
  }

  void changeError(String errorMessage) {
    emit(
      state.copyWith(
        status: ScannerStatus.error,
        errorMessage: errorMessage,
      ),
    );
  }
}
