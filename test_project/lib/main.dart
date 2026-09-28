import 'package:flutter/material.dart';
import 'package:test_project/screens/home.dart';
import 'package:test_project/screens/layoutPractice.dart';

//define the entry point of our application
void main(){
  runApp(MyApp());
}

//root of our application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:RollDice() ,
      // home:DiceGrid() ,
    );

  }
}