import 'package:ai_food/features/home/view/home_view.dart';
import 'package:ai_food/product/utils/constants/string_constants.dart';
import 'package:flutter/material.dart';

final class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringConstants.appTitle,
      home: HomeView(),
    );
  }
}
