import 'package:ai_food/features/home/cubit/scanner_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class ScannerCubit extends Cubit<ScannerState> {
  ScannerCubit() : super(const ScannerState());

  void getBarcode(String barcode) {
    emit(state.copyWith(status: ScannerStatus.loaded, barcode: barcode));
  }

  void setMood(String mood) {
    emit(state.copyWith(mood: mood));
    print(state.mood);
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
