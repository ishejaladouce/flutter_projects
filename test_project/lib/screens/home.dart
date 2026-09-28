import 'package:flutter/material.dart';
import 'package:test_project/screens/layoutPractice.dart';
import '../logic/random.dart';

class RollDice extends StatefulWidget {
  State<RollDice> createState() => _RollDice();
}

class _RollDice extends State<RollDice> {

  int diceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text ("Let's Play",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0
              ),
              ),
              Image.asset("images/dice-$diceNumber.png",
              width: 300,
              height: 300,
              ),
              ElevatedButton(
               style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(Colors.pinkAccent)
               ), 
               onPressed: (){
                setState(() {
                  
                });

               },
               child: Text("Roll Dice",
                style: TextStyle(
                 color: Colors.white,
                 fontSize: 20.0
              ),
               ))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () { 
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => DiceGrid()));
        },
        child: Icon(Icons.skip_next),
        ),

    );
  }
}