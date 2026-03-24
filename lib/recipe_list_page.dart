import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_detail_page.dart';

class RecipeListPage extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
      title: 'Salad Caesar',
      imageUrl: 'assets/images/caesar.jpg',
      ingredients: [
        ' - Chicken',
        ' - Salad',
        ' - Cheese',
        ' - Sause "Caesar"',
        ' - Eggs'
      ],
    ),
    Recipe(
      title: 'Fetuchini',
      imageUrl: 'assets/images/fetuchini.jpg',
      ingredients: [
        ' - Pasta',
        ' - Cream',
        ' - Cheese',
      ],
    ),
    Recipe(
      title: 'Taco',
      imageUrl: 'assets/images/taco.jpg',
      ingredients: [
        ' - Tortilia',
        ' - Meat',
        ' - Vegetables',
      ],
    ),
  ];

  RecipeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => RecipeDetailPage(recipe: recipe),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset(recipe.imageUrl),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      recipe.title,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}