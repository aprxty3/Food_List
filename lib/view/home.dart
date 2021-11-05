import 'package:flutter/material.dart';
import 'package:food_apps/view/widget/recipe_cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(
              width: 10,
            ),
            Text('Food Recipes')
          ],
        ),
      ),
      body: RecipeCard(
          title: 'Fruit Granola',
          cookTime: '20 min',
          rating: '4.1',
          thumbnailUrl:
              'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360'),
    );
  }
}
