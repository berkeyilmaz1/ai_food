import 'package:equatable/equatable.dart';

enum ScannerStatus { initial, loading, loaded, error }

final class ScannerState extends Equatable {
  const ScannerState({
    //change to initial
    this.status = ScannerStatus.loaded,
    this.errorMessage,
    this.barcode,
    this.mood,
  });

  final ScannerStatus status;
  final String? errorMessage;
  final String? barcode;
  final String? mood;

  @override
  List<Object?> get props => [status, errorMessage, barcode, mood];

  ScannerState copyWith({
    ScannerStatus? status,
    String? errorMessage,
    String? barcode,
    String? mood,
  }) {
    return ScannerState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      barcode: barcode ?? this.barcode,
      mood: mood ?? this.mood,
    );
  }
}
