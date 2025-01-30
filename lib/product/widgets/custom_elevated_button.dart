import 'package:ai_food/core/utils/border_radius_general.dart';
import 'package:flutter/material.dart';

final class CustomElevatedButton extends ElevatedButton {
  CustomElevatedButton({
    required super.onPressed,
    required super.child,
    super.key,
  }) : super(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.red),
            foregroundColor: WidgetStateProperty.all(Colors.white),
            shape: WidgetStateProperty.all(
              const RoundedRectangleBorder(
                borderRadius: BorderRadiusGeneral.allLowest(),
              ),
            ),
            shadowColor: WidgetStateProperty.all(Colors.red),
          ),
        );
}
