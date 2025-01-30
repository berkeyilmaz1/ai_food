import 'package:ai_food/features/home/cubit/scanner_cubit.dart';
import 'package:ai_food/features/home/view/home_view.dart';
import 'package:ai_food/locator.dart';
import 'package:flutter/material.dart';

mixin HomeViewMixin on State<HomeView> {
  final _scannerCubit = locator<ScannerCubit>();
  ScannerCubit get scannerCubit => _scannerCubit;
}
