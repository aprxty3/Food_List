import 'package:flutter/material.dart';
import 'package:food_apps/model/api.dart';
import 'package:food_apps/view/widget/recipe_cart.dart';
import 'package:food_apps/model/recipe.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Recipe> _recipes;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeAPI.getRecipe();
    setState(() {
      _isLoading = false;
    });
    print(_recipes);
  }

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
          title: 'Rica-rica',
          cookTime: '20 min',
          rating: '4.1',
          thumbnailUrl:
              'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360'),
    );
  }
}
