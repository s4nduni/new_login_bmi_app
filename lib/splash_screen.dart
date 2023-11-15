import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_bmi_cal/main.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () { 
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(
          builder: (context) => PageSwitcher()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: <Color>[
              Color.fromARGB(255, 18, 60, 185),
              Color.fromARGB(255, 48, 80, 205),
              Color.fromARGB(255, 78, 100, 225),
              Color.fromARGB(255, 108, 120, 245)
            ],
          ),
        ),
        // color: Colors.indigo,
        child: Center(
          child: Container(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                Text('BMI ',
                style: TextStyle(fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white)
                ,),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('CALCULATOR',
                  style: TextStyle(fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)
                  ,),
                  
                ),
               Image.asset(
                            "assests/animal.gif",
                            width: 250,
                            height: 250,
                            ),
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}