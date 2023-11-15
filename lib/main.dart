// ignore_for_file: prefer_const_constructors

// import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_bmi_cal/splash_screen.dart';

import 'inputdata.dart';
import 'loginscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splashscreen(),
  ));
}
class PageSwitcher extends StatelessWidget {
  const PageSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder:(context,snapshot){
          if (snapshot.hasError){
          return Text("Something went wrong");
          }else if(snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child: CircularProgressIndicator(),
          );
          }else if(snapshot.hasData){
          return FirstPage(); 
          }else{
          return Signin();
          }
      },
    );
  }
}