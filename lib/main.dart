import 'package:flutter/material.dart';
import 'package:movies_app/Homepage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      home: Scaffold(

      ),
      routes: {
        Homepage.routeName: (buildContext)=> Homepage(),
      },
      initialRoute: Homepage.routeName,
    );
  }
}