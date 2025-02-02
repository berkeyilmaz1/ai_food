part of '../view/food_result_view.dart';

final class FoodResultImage extends StatelessWidget {
  const FoodResultImage({
    required this.widget,
    super.key,
  });

  final FoodResultView widget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image.network(
          widget.food.foodImage,
          width: context.width,
          height: context.height4,
          fit: BoxFit.cover,
        ),
        const _GradientTitleBackground(),
        _FoodTitle(widget: widget),
      ],
    );
  }
}

final class _GradientTitleBackground extends StatelessWidget {
  const _GradientTitleBackground();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.black.withValues(alpha: 0.5),
              Colors.transparent,
            ],
          ),
        ),
      ),
    );
  }
}

final class _FoodTitle extends StatelessWidget {
  const _FoodTitle({
    required this.widget,
  });

  final FoodResultView widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const PagePadding.allMedium(),
      child: Text(
        widget.food.foodName,
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
