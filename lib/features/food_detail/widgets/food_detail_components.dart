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
          DetailIngredients(food: food),
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
        height: WidgetSizes.twoHundredFifty,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => const Center(
          child: Icon(Icons.image_not_supported, size: WidgetSizes.oneHundred),
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
    if (dietary.isEmpty) return const SizedBox.shrink();
    return SizedBox(
      height: WidgetSizes.fifty,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dietary.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: WidgetSizes.eight),
          child: Chip(
            label: Text(dietary[index]),
            backgroundColor: Colors.green.shade100,
          ),
        ),
      ),
    );
  }
}

final class DetailIngredients extends StatelessWidget {
  const DetailIngredients({
    required this.food,
    super.key,
  });

  final Food food;

  @override
  Widget build(BuildContext context) {
    if (food.extendedIngredients == null || food.extendedIngredients!.isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: WidgetSizes.eight,
      children: [
        Text(
          StringConstants.ingredients,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          height: WidgetSizes.fifty,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: food.extendedIngredients!.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              final ingredient = food.extendedIngredients![index];
              return Padding(
                padding: const EdgeInsets.only(right: WidgetSizes.eight),
                child: Chip(
                  label: Text(
                    '${ingredient.amount} ${ingredient.unit} ${ingredient.nameClean}',
                  ),
                  backgroundColor: Colors.purple.shade100,
                ),
              );
            },
          ),
        ),
      ],
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
    if (food.cuisines == null || food.cuisines!.isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: WidgetSizes.eight,
      children: [
        Text(
          StringConstants.cuisines,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          height: WidgetSizes.fifty,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: food.cuisines!.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: WidgetSizes.eight),
              child: Chip(
                label: Text(food.cuisines![index]),
                backgroundColor: Colors.blue.shade100,
              ),
            ),
          ),
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
    if (food.dishTypes == null || food.dishTypes!.isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: WidgetSizes.eight,
      children: [
        Text(
          StringConstants.foodType,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          height: WidgetSizes.fifty,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: food.dishTypes!.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: WidgetSizes.eight),
              child: Chip(
                label: Text(food.dishTypes![index]),
                backgroundColor: Colors.orange.shade100,
              ),
            ),
          ),
        ),
      ],
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

final class DetailDescription extends StatelessWidget {
  const DetailDescription({
    required this.food,
    super.key,
  });

  final Food food;

  @override
  Widget build(BuildContext context) {
    if (food.instructions == null || food.instructions!.isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: WidgetSizes.eight,
      children: [
        Text(
          StringConstants.description,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          food.instructions ?? '',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
