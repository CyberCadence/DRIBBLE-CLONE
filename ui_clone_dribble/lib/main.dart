import 'package:flutter/material.dart';
import 'package:ui_clone_dribble/View/Pages/HomePage.dart';
import 'package:ui_clone_dribble/View/Pages/recentTransactionsPage.dart';
import 'package:ui_clone_dribble/View/TransactionPageWidgets.dart';
import 'package:ui_clone_dribble/constants.dart';

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
      theme: ThemeData(appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: kBgColor),
    
        primarySwatch: Colors.blue,
      ),
      home:   Scaffold(
        backgroundColor: kBgColor,
        body: HomePage())
    );
  }
}

 