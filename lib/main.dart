import 'package:ai_food/locator.dart';
import 'package:ai_food/product/initialize/config/app_environment.dart';
import 'package:ai_food/product/initialize/config/env.dart';
import 'package:ai_food/product/initialize/main_app/main_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  AppEnvironment.setup(Env());
  runApp(const MainApp());
}
