// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';


// // ignore: must_be_immutable
// class LoginScreen extends StatelessWidget {
//   LoginScreen({super.key});
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final GlobalKey<FormState>_formKey = GlobalKey<FormState>();

//   var password;
//   var emailAdress;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Form(
//         key:_formKey,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Email Address"),
//             TextFormField(
//               controller: emailController,
//               onSaved: (value){
//                 emailAdress = value;
//               },
//             ),
//             Text("Password "),
//             TextFormField( 
//               controller: passwordController,
//               onSaved: (value){
//                 password = value;
//               },
//             ),
//             ElevatedButton(
//               onPressed: (){
//                 if(_formKey.currentState!.validate()){
//                   _formKey.currentState!.save();

//                   print(emailAdress);
//                   print(password);
//                   logIn();
//                 }
//               }, 
//             child: Text("Login"))
//           ],
//         ),
//       ),
//     );
//   }
//   void logIn(){
//     FirebaseAuth.instance.signInWithEmailAndPassword(
//       email:emailAdress,
//       password : password,
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:new_bmi_cal/inputdata.dart';
import 'package:new_bmi_cal/reset.dart';
// import 'package:new_bmi_cal/reusebale/reuseable.dart';
import 'package:new_bmi_cal/signup.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  // get images => null;
  final _passwordTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final GlobalKey<FormState>_formKey = GlobalKey<FormState>();

  var password;
  var emailAdress;
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: 
      Container(
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
        // color add
        // decoration: const BoxDecoration(
        //   color: Colors.blue),
        child: SingleChildScrollView(
          child: Padding(
          padding:EdgeInsets.fromLTRB(
            20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: Form(
            key: _formKey,
            child: Column(
              children:<Widget> [
                // Icon(
                //   Icons.android,
                //   size: 100,
                // ),
                logo("assests/login.png"),
                SizedBox(
                  height: 30,
                ),
                //Image.asset('assets/images/login-.png'),
          
                
              //   Image(
              //       image:AssetImage("assests/login.png"),
              //       height: 100,
              // ),
          
          
                // reusableTextFild("Enter UserName", Icons.person_outlined, false, _emailTextController),
                // const SizedBox(
                //   height: 20,
                // ),
                // reusableTextFild("Enter Password", Icons.lock_outlined, true,_passwordTextController ),
                // const SizedBox(
                //   height: 5,
                // ),
                  TextFormField(
                  // validator:validEmail,
                  validator: (value){
                    bool emailValid = RegExp(r'^[\w\.-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$').hasMatch(value!);
                    if(value.isEmpty){
                      return "Enter Email";
                    }
                    
                    else if(!emailValid){
                      return "Enter Valid Email";
                    }
                    return null;
                  },

            controller:_emailTextController ,
            // obscureText: isPasswordType,
            // enableSuggestions: !isPasswordType,
            // autocorrect: !isPasswordType,
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.white.withOpacity(0.9)),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock_outlined,
                color: Colors.white70,
                ),
            labelText: "Enter UserName",
            labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
            filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            fillColor: Colors.white.withOpacity(0.3),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(width:0,style: BorderStyle.none))),
            keyboardType: TextInputType.emailAddress,
            // onSaved: (value){
            //   emailAdress = value;

            // },
            // ? TextInputType.visiblePassword
            // :TextInputType.emailAddress,
                  // reusableTextFild("Enter UserName", Icons.person_outlined, false, _emailTextController),
                ),
                
                const SizedBox(
                  height: 20,
                ),
                // reusableTextFild("Enter Password", Icons.lock_outlined, true,_passwordTextController ),
                // const SizedBox(
                //   height: 20,
                // ),
                TextFormField(
                  // validator:validEmail,
                  validator: (value){
                    // bool emailValid = RegExp(r'^[\w\.-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$').hasMatch(value!);
                    if(value!.isEmpty){
                      return "Enter Password";
                    }
                    
                    else if(_passwordTextController.text.length<6){
                      return "Password length Should be more than 6 characters";
                    }
                    return null;
                  },

            controller:_passwordTextController ,
            obscureText: true,
            enableSuggestions: true,
            autocorrect: true,
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.white.withOpacity(0.9)),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock_outlined,
                color: Colors.white70,
                ),
            labelText: "Enter Password",
            labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
            filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            fillColor: Colors.white.withOpacity(0.3),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(width:0,style: BorderStyle.none))),
            keyboardType: TextInputType.emailAddress,
            // onSaved: (value){
            //   password = value;
            //   },
            // ? TextInputType.visiblePassword
            // :TextInputType.visiblePassword,
                  // reusableTextFild("Enter UserName", Icons.person_outlined, false, _emailTextController),
                ),

                forgetPassword(context),

                // firbaseButton(context,"Sign In",(){
                //   FirebaseAuth.instance.signInWithEmailAndPassword(
                    
                //     email: _emailTextController.text, 
                //     password: _passwordTextController.text).then((value){
                //       Navigator.push(context,
                //       MaterialPageRoute(builder: (context)=> const FirstPage()));
                //     });
                  
                // }),
                Center(
                  child: Text(errorMessage),
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
                  child: ElevatedButton(
                   onPressed: () async {
                  // Validate returns true if the form is valid, otherwise false.
                  if(_formKey.currentState!.validate()){
                    try{
                     await FirebaseAuth.instance.signInWithEmailAndPassword(
                      
                      email: _emailTextController.text, 
                      password: _passwordTextController.text).then((value){
                        // Navigator.push(context,
                        // MaterialPageRoute(builder: (context)=> const FirstPage()));
                      });
                      errorMessage = '';
                    }on FirebaseAuthException catch(error){
                      print(error.message.toString());
                      print('hooooooo');
                       showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            backgroundColor: Colors.red,
                            content: Text(error.message.toString(),
                            ),
                          );

                        });
                       
                      
                    }
                  }
                  
                    
                    
                  }, 
                    child: Text( 'Sign In',
                    style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold,fontSize: 16
                  ),
        ),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) {

          if(states.contains(MaterialState.pressed)){
            return Colors.black26;
          }
          return Colors.white;
        }),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(300))
        ),
         ),
                    
                    ),
                ),
                signUpOption(),
              ],
            ),
          ),
          ),
          ),
        
        )
        );
  }

Row signUpOption(){
  return Row(children: [
    const Text('                       Do not  have account?',
    style: TextStyle(color: Colors.white70),
    ),
    GestureDetector(
      onTap: (){
        Navigator.push(context,
        MaterialPageRoute(builder: (context)=> SignUp()));
      },
      child: const Text(
        ' Sign Up ',
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
    )
  ],
  );
}


Widget forgetPassword(BuildContext context){
  return Container(
    width:  MediaQuery.of(context).size.width,
    height: 35,
    alignment: Alignment.bottomRight,
    child:TextButton(
    child: const Text(
      'Forgot Password',
    style: TextStyle(color: Colors.white70),
    textAlign: TextAlign.right,
    ),
    onPressed:()=> Navigator.push(
      context,MaterialPageRoute(builder: (context)=>Reset())
    ),
  ),
  );
}

    

}
Image logo(String imageName){
    return Image.asset(
      width: 360,
      height: 240,
      imageName,
      fit:BoxFit.fitWidth,
      color: Colors.white,
    );
}



