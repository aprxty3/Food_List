import 'dart:convert';
import 'package:food_apps/model/recipe.dart';
import 'package:http/http.dart' as http;

class RecipeAPI {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "18", "start": "0", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "x-rapidapi-key": "c7e44a9fe9mshd6139e551f20b66p147763jsndce4d78c8c3f",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}
