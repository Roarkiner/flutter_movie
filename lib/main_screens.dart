import 'package:flutter/material.dart';
import 'package:movie_project/home.dart';
import 'package:movie_project/profil.dart';

class MainScreens extends StatefulWidget {
  @override
  _MainScreensState createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {

  int pageIndex = 0;
  
  List pageList = [
    {'widget': HomeScreen(), 'title': 'Films'},
    {'widget': ProfilScreen(), 'title': 'Profil'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(pageList[pageIndex]['title'], style: TextStyle(fontSize: 24),)
        ),
      ),

      body: pageList[pageIndex]['widget'],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (index){
          setState(() {
            pageIndex = index;
          });
        },
        backgroundColor: Colors.black87,
        unselectedItemColor: Colors.white70,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 40,), 
            label: "Films",
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 21,
              backgroundColor: Colors.white70,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("images/Scarlett.jpg"),
              ),
            ), 
            label: "Profile"
          ),
        ],
      ),
    );
  }
}