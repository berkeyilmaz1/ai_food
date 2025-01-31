import 'package:ai_food/features/home/cubit/scanner_cubit.dart';
import 'package:ai_food/features/home/view/home_view.dart';
import 'package:ai_food/locator.dart';
import 'package:flutter/material.dart';

mixin HomeViewMixin on State<HomeView> {
  final _scannerCubit = locator<ScannerCubit>();
  ScannerCubit get scannerCubit => _scannerCubit;

  late final PageController _pageController;
  PageController get pageController => _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
