import 'package:flutter/material.dart';
import 'package:ui_clone_dribble/View/Pages/BottomNavigationbar.dart';
import 'package:ui_clone_dribble/View/Pages/HomePage.dart';
import 'package:ui_clone_dribble/View/Pages/LoginPage.dart';
import 'package:ui_clone_dribble/View/Pages/recentTransactionsPage.dart';
import 'package:ui_clone_dribble/View/TransactionPageWidgets.dart';
import 'package:ui_clone_dribble/constants.dart';

void main() {
  runApp(  MaterialApp(theme: 
  ThemeData(
    
    appBarTheme: const AppBarTheme(backgroundColor: kBgColor,elevation: 0),scaffoldBackgroundColor: kBgColor
    
   , ),
    
    
    home: LoginPage()));
}
