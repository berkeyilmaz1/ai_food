part of '../view/food_detail_view.dart';

final class DetailComponents extends StatelessWidget {
  const DetailComponents({
    required this.food,
    super.key,
  });

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const PagePadding.all(),
      child: Column(
        spacing: WidgetSizes.eight,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            food.title ?? '',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          DetailDietaryInfo(dietary: food.dietaryFlags),
          DetailInfoTile(food: food),
          DetailCuisine(food: food),
          DetailDishTypes(food: food),
          DetailDescription(food: food),
        ],
      ),
    );
  }
}

final class FoodDetailImage extends StatelessWidget {
  const FoodDetailImage({
    required this.food,
    super.key,
  });
  final Food food;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: food.image.toString(),
      child: Image.network(
        food.image ?? '',
        width: double.infinity,
        height: 250,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => const Center(
          child: Icon(Icons.image_not_supported, size: 100),
        ),
      ),
    );
  }
}

final class DetailDietaryInfo extends StatelessWidget {
  const DetailDietaryInfo({required this.dietary, super.key});
  final List<String> dietary;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: WidgetSizes.eight,
      children: dietary
          .map(
            (flag) => Chip(
              label: Text(flag),
              backgroundColor: Colors.green.shade100,
            ),
          )
          .toList(),
    );
  }
}

final class DetailInfoTile extends StatelessWidget {
  const DetailInfoTile({
    required this.food,
    super.key,
  });

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const PagePadding.allSmall(),
      child: Row(
        children: [
          Expanded(
            child: MinuteInfoTile(
              icon: Icons.timer,
              label: StringConstants.readyTime,
              value: '${food.readyInMinutes ?? '??'} dakika',
            ),
          ),
          Expanded(
            child: MinuteInfoTile(
              icon: Icons.kitchen,
              label: StringConstants.cookingTime,
              value: '${food.cookingMinutes ?? '??'} dakika',
            ),
          ),
        ],
      ),
    );
  }
}

final class DetailCuisine extends StatelessWidget {
  const DetailCuisine({
    required this.food,
    super.key,
  });

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: WidgetSizes.eight,
      children: [
        Text(
          StringConstants.cuisines,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Wrap(
          spacing: WidgetSizes.eight,
          children: food.cuisines!
              .map(
                (cuisine) => Chip(
                  label: Text(cuisine),
                  backgroundColor: Colors.blue.shade100,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

final class DetailDishTypes extends StatelessWidget {
  const DetailDishTypes({
    required this.food,
    super.key,
  });

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: WidgetSizes.eight,
      children: [
        Text(
          StringConstants.foodType,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Wrap(
          spacing: WidgetSizes.eight,
          children: food.dishTypes!
              .map(
                (dishType) => Chip(
                  label: Text(dishType),
                  backgroundColor: Colors.orange.shade100,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

final class DetailDescription extends StatelessWidget {
  const DetailDescription({
    required this.food,
    super.key,
  });

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: WidgetSizes.eight,
      children: [
        Text(
          StringConstants.description,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          food.summary ?? '',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
