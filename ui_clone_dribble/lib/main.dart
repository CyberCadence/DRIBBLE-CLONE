import 'package:flutter/material.dart';
import 'package:ui_clone_dribble/View/RadialStackWidget.dart';

void main() {
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      home:   Scaffold(
        backgroundColor: Colors.black,
        body: CustomCircularWidget())
    );
  }
}

 