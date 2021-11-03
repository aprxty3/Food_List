import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(),
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
              icon: Icon(Icons.home),
              title: const Text(
                "Home",
                style: const TextStyle(color: Colors.white),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: const Text(
                "Search",
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: const Text(
                "Person",
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: Stack(children: <Widget>[
        Positioned(
          top: 0,
          height: height * 0.35,
          left: 0,
          right: 0,
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(
              bottom: const Radius.circular(40),
            ),
            child: Container(
              color: Colors.white,
            ),
          ),
        )
      ]),
    );
  }
}
