import 'package:flutter/material.dart';
import 'package:food_recipe/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      tittle: 'Food Recipes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white)
        )
      ),
    )
  }
}