import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

  /// [width1] is 10% of the screen width
  double get width1 => width * 0.1;

  /// [height1] is 10% of the screen height
  double get height1 => height * 0.1;

  /// [width2] is 20% of the screen width
  double get width2 => width * 0.2;

  /// [height2] is 20% of the screen height
  double get height2 => height * 0.2;

  /// [width3] is 30% of the screen width
  double get width3 => width * 0.3;

  /// [height3] is 30% of the screen height
  double get height3 => height * 0.3;

  /// [width4] is 40% of the screen width
  double get width4 => width * 0.4;

  /// [height4] is 40% of the screen height
  double get height4 => height * 0.4;

  /// [width5] is 50% of the screen width
  double get width5 => width * 0.5;

  /// [height5] is 50% of the screen height
  double get height5 => height * 0.5;

  /// [width6] is 60% of the screen width
  double get width6 => width * 0.6;

  /// [height6] is 60% of the screen height
  double get height6 => height * 0.6;

  /// [width7] is 70% of the screen width
  double get width7 => width * 0.7;

  /// [height7] is 70% of the screen height
  double get height7 => height * 0.7;

  /// [width8] is 80% of the screen width
  double get width8 => width * 0.8;

  /// [height8] is 80% of the screen height
  double get height8 => height * 0.8;

  /// [width9] is 90% of the screen width
  double get width9 => width * 0.9;

  /// [height9] is 90% of the screen height
  double get height9 => height * 0.9;

}
