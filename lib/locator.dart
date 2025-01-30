import 'package:ai_food/features/home/cubit/scannar_cubit.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<ScannerCubit>(ScannerCubit.new);
}
