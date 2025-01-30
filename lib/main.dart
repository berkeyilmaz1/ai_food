import 'package:ai_food/locator.dart';
import 'package:ai_food/product/initialize/main_app/main_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(const MainApp());
}
