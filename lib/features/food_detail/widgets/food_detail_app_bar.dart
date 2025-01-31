part of '../view/food_detail_view.dart';

final class FoodDetailAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const FoodDetailAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
          shadows: [
            Shadow(blurRadius: WidgetSizes.twelve, offset: Offset(1, 1)),
          ],
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
