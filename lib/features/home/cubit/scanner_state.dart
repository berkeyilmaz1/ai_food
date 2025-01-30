import 'package:equatable/equatable.dart';

enum ScannerStatus { initial, loading, loaded, error }

final class ScannerState extends Equatable {
  const ScannerState({
    this.status = ScannerStatus.initial,
    this.errorMessage,
    this.barcode,
  });

  final ScannerStatus status;
  final String? errorMessage;
  final String? barcode;

  @override
  List<Object?> get props => [status, errorMessage, barcode];

  ScannerState copyWith({
    ScannerStatus? status,
    String? errorMessage,
    String? barcode,
  }) {
    return ScannerState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      barcode: barcode ?? this.barcode,
    );
  }
}
