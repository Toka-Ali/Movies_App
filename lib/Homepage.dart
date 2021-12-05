// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:movies_app/Screens/Browsetap.dart';
import 'package:movies_app/Screens/Hometap.dart';
import 'package:movies_app/Screens/Searchtap.dart';
import 'package:movies_app/Screens/Watchlisttap.dart';
import 'package:movies_app/main.dart';

class Homepage extends StatefulWidget{
  static const String routeName = 'home';

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentPage = 0;
  List<Widget> tabs = [
    HomeTap(),
    SearchTap(),
    BrowseTap(),
    WatchlistTap(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 19, 18, 1.0),
      bottomNavigationBar:
      Theme(
        data: Theme.of(context).copyWith(
            canvasColor: MyThemeData.primaryColor),
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentPage = index;
            });
          },
          currentIndex: currentPage,
          selectedItemColor: MyThemeData.selectedItem,
          unselectedItemColor: MyThemeData.unselectedItem,
          items: [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home, size: 30,)),
            BottomNavigationBarItem(
                label: 'Search',
                icon: Icon(Icons.search, size: 30,)),
            BottomNavigationBarItem(
                label: 'Browse',
                icon: Icon(Icons.movie, size: 30,)),
            BottomNavigationBarItem(
                label: 'Watch List',
                icon: Transform(transform: Matrix4.rotationY(math.pi),
                  alignment: Alignment.center,
                  child: Icon(Icons.collections_bookmark_rounded , size: 30,),

                )),
          ],

        ),
      ),
      body: tabs[currentPage],
    );
  }

  Widget getCurrentPage() {
    if (currentPage == 0) {
      return HomeTap();
    }
    else if (currentPage == 1) {
      return SearchTap();
    }
    else if (currentPage == 2) {
      return BrowseTap();
    }
    else  {
      return WatchlistTap();
    }
  }

}