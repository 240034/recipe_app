import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetailPage extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailPage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(recipe.imageUrl),

          const SizedBox(height: 10),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Ingredients',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          ...recipe.ingredients.map((ingredient) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Text(ingredient),
            );
          }),
        ],
      ),
    );
  }
}
