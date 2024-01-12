import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int ballNumber = 1 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(" Magic 8 Ball that will give you the answers",style: TextStyle(fontWeight:FontWeight.w500 ),),
            SizedBox(height: 50,),
            TextButton(onPressed: (){
              setState(() {
                ballNumber  = Random().nextInt(5) + 1;
              });
            }, child: Image.asset("images/ball$ballNumber.png")),
          ],
        ),
      ),
    );
  }
}