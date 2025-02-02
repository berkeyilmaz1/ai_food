import 'package:ai_food/core/utils/widget_sizes.dart';
import 'package:flutter/material.dart';

/// [PagePadding] is a class that extends [EdgeInsets] to provide padding values for the pages.
final class PagePadding extends EdgeInsets {
  /// Padding is 20 [EdgeInsets.all]
  const PagePadding.all() : super.all(WidgetSizes.twenty);

  /// Padding is 12 [EdgeInsets.all]
  const PagePadding.generalCardAll() : super.all(WidgetSizes.twelve);

  /// Padding is 16 [EdgeInsets.all]
  const PagePadding.allMedium() : super.all(WidgetSizes.sixteen);

  /// Padding is 8 [EdgeInsets.all]
  const PagePadding.allSmall() : super.all(WidgetSizes.eight);

  /// Padding is 24 [EdgeInsets.all]
  const PagePadding.vertical()
      : super.symmetric(horizontal: WidgetSizes.twentyFour);

  const PagePadding.onlyRightChip() : super.only(right: WidgetSizes.eight);
}
