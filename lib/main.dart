// ignore: non_constant_identifier_names
// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:movies_app/Homepage.dart';

void main(){
  runApp(MyApp());
}

class MyThemeData {
  static final primaryColor = Color.fromRGBO(18, 19, 18, 1.0);
  static final selectedItem = Color.fromRGBO(255, 187, 59, 1.0);
  static final unselectedItem = Color.fromRGBO(255, 255, 255, 1.0);
  static final CircularProgressIndicator = Color.fromRGBO(255, 255, 255, 1.0);
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
          primaryColor: MyThemeData.primaryColor,
          progressIndicatorTheme:
          ProgressIndicatorThemeData (color: MyThemeData.CircularProgressIndicator)
      ),
      routes: {
        Homepage.routeName: (buildContext)=> Homepage(),
      },
      initialRoute: Homepage.routeName,
    );
  }
}