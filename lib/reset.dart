import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:login_page/Screen/home.dart';
// import 'package:login_page/reusebale/reuseable.dart';
// import 'package:new_bmi_cal/inputdata.dart';
// import 'package:new_bmi_cal/loginscreen.dart';
import 'package:new_bmi_cal/reusebale/reuseable.dart';

class Reset extends StatefulWidget {
  const Reset({super.key});

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  
  
  TextEditingController _emailTextController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Reset Password",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          
        ),
      ),
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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
          child: Column(
            children:<Widget> [
              const SizedBox(
                height: 20,
              ),
              
              reusableTextFild("Enter Email Id", Icons.person_outlined, false,_emailTextController ),
              const SizedBox(
                height: 20,
              ),
              firbaseButton(context, "Reset Password", (){
                FirebaseAuth.instance.sendPasswordResetEmail(email: _emailTextController.text)
                .then((value) => Navigator.of(context).pop());
              }),
              Image.asset(
                            "assests/animals.gif",
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