import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:login_page/Screen/home.dart';
// import 'package:login_page/reusebale/reuseable.dart';
import 'package:new_bmi_cal/inputdata.dart';
// import 'package:new_bmi_cal/loginscreen.dart';
import 'package:new_bmi_cal/reusebale/reuseable.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _useNameTextController = TextEditingController();


  Future adduserdetails(String name2,  String email, ) async{
    await FirebaseFirestore.instance.collection('client').add({
      'name': name2,
      'email': email,
      'bmires':'',
      'bmiStatus': '',
      
    });
  }


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
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
              reusableTextFild("Enter UserName", Icons.person_outlined, false, _useNameTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextFild("Enter Email Id", Icons.person_outlined, false,_emailTextController ),
              const SizedBox(
                height: 20,
              ),
              reusableTextFild("Enter Password", Icons.lock_outlined, true,_passwordTextController ),
              const SizedBox(
                height: 20,
              ),
              firbaseButton(context, "Sign Up", ()async{
                await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: _emailTextController.text,
                  password: _passwordTextController.text).then((value){
                    print('Create');

                    adduserdetails(
                      _useNameTextController.text.trim(),
                      _emailTextController.text.trim(),
                    );
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> const FirstPage()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                
              }),
              Image.asset(
                            "assests/signup.gif",
                            width: 250,
                            height: 250,
                            ),
            ],
            
          ),),
        ),
        
      ),
    );
  }


}