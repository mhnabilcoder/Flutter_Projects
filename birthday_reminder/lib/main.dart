import './ui/home_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    
    theme: ThemeData(
      appBarTheme: AppBarTheme(color: Colors.amber),
        primaryColor: Colors.blue
    ),
    home: HomeScreen(),
  ));
}