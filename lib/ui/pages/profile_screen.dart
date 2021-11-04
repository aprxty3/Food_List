import 'package:flutter/material.dart';
import 'package:food_apps/ui/model/meal.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        child: BottomNavigationBar(
          iconSize: 40,
          selectedIconTheme: IconThemeData(
            color: const Color(0xFF200087),
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.black12,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.home),
              ),
              title: const Text(
                "Home",
                style: const TextStyle(color: Colors.white),
              ),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.search),
              ),
              title: const Text(
                "Search",
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.person),
              ),
              title: const Text(
                "Person",
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            height: height * 0.20,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: const Radius.circular(40),
              ),
              child: Container(
                color: Colors.lightBlue,
              ),
            ),
          ),
          Positioned(
            top: height * 0.38,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.grey,
              height: height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8.0,
                      left: 32,
                      right: 16,
                    ),
                    child: Text(
                      "FOOD",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Row(children: <Widget>[
                        for (int i = 0; i < foods.length; i++)
                          _FoodCard(
                            food: foods[i],
                          )
                      ]),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.redAccent,
                    ),
                  ),
                  Expanded(
                    child: Container(color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _FoodCard extends StatelessWidget {
  final Food food;
  const _FoodCard({Key key, @required this.food}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
        left: 10,
      ),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        elevation: 4,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Expanded(
            child: Image.asset(food.imagePath),
          ),
          Expanded(
            child: Column(
              children: [
                Text(food.name),
                Text(food.timeTaken),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
