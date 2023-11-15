// ignore_for_file: file_names, prefer_const_constructors, unused_import, duplicate_ignore
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_bmi_cal/calculate.dart';

import 'display.dart';
import 'gender.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<FirstPage> {
  TextEditingController inputController = TextEditingController();
  late String result;
  final _formKey = GlobalKey<FormState>();
  final fieldText1 = TextEditingController();
  final fieldText2 = TextEditingController();
  // final fieldText3 = TextEditingController();
  // final fieldText4 = TextEditingController();
  Gender selectedCard = Gender.unSelected;
  int sliderValue = 100;
  int sliderValue1 = 40;
  //int weight = 40;
  String myAge = '';
  String name = '';
  String address = '';
  String gender = '';
  String dob = '';
  DateTime pickedDate = DateTime.now();
  DateTime today = DateTime.now();
  void clearText() {
    fieldText1.clear();
    fieldText2.clear();
  
    // fieldText3.clear();
    // fieldText4.clear();
  }
  
  // int height=0;
  void _showDatePicker(){
    showDatePicker(
      context: context, 
      initialDate: DateTime.now(), 
      firstDate: DateTime(2000), 
      lastDate: DateTime(2030)
    ).then((pickedDate){
      if (pickedDate != null){
        calculateAge(pickedDate);
        today = pickedDate;
      }

    });

    
  }
  void calculateAge(DateTime birth){
  DateTime now = DateTime.now();
  Duration age = now.difference(birth);
  int year = age.inDays ~/365;
  int months =(age.inDays%365) ~/30;
  int days = ((age.inDays%365)%30);
  setState((){
    myAge = '$year years, $months months and $days days';
  });
}
  // final nameController = TextEditingController();
  // final addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color(0xFF17203A),
        // surfaceTintColor: Color.fromRGBO(0, 1, 11, 0.4),
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    CupertinoIcons.person,
                    color: Colors.white,
                  ),
                ),
                title: Text("  App Owner",
                style: TextStyle(color: const Color.fromARGB(255, 254, 255, 255)),
                ),
                subtitle: Text("  W.S.Kaushalya",
                style: TextStyle(color: const Color.fromARGB(255, 250, 250, 250)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Color.fromARGB(144, 3, 0, 17),
                  clipBehavior: Clip.hardEdge,
                  child: Container(
                  
                    padding: EdgeInsets.all(10.0),
                    
                    width: 380,
                    height: 40,
                    color: Color.fromARGB(144, 130, 186, 233),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(CupertinoIcons.home,
                        color: Colors.white,),
                        Text ( '           Home',
                                style: TextStyle(
                                  fontSize: 15,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white
                                     
                                ),),
                        
                  ],
                    ),
                  ),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                  color: Color.fromARGB(144, 3, 0, 17),
                  clipBehavior: Clip.hardEdge,
                  child: Container(
                    
                    padding: EdgeInsets.all(10.0),
                    
                    width: 380,
                    height: 40,
                    color: Color.fromARGB(144, 130, 186, 233),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(CupertinoIcons.search,
                        color: Colors.white,),
                        Text ('           Search',
                                style: TextStyle(
                                  fontSize: 15,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white
                                        
                                ),),
                      
                            
                      ],
                    ),
                  ),
                              ),
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Color.fromARGB(144, 3, 0, 17),
                  clipBehavior: Clip.hardEdge,
                  child: Container(
                  
                    padding: EdgeInsets.all(10.0),
                    
                    width: 380,
                    height: 40,
                    color: Color.fromARGB(144, 130, 186, 233),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(CupertinoIcons.square_favorites,
                        color: Colors.white,),
                        Text ('       Favorites',
                                style: TextStyle(
                                  fontSize: 15,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white
                                        
                                ),),
                      
                          
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Color.fromARGB(144, 3, 0, 17),
                  clipBehavior: Clip.hardEdge,
                  child: Container(
                  
                    padding: EdgeInsets.all(10.0),
                    
                    width: 380,
                    height: 40,
                    color: Color.fromARGB(144, 130, 186, 233),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(CupertinoIcons.app_badge,
                        color: Colors.white,),
                        Text ('             Help',
                                style: TextStyle(
                                  fontSize: 15,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white
                                        
                                ),),
                      
                          
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Color.fromARGB(144, 3, 0, 17),
                  clipBehavior: Clip.hardEdge,
                  child: Container(
                  
                    padding: EdgeInsets.all(10.0),
                    
                    width: 380,
                    height: 40,
                    color: Color.fromARGB(144, 130, 186, 233),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(CupertinoIcons.time,
                        color: Colors.white,),
                        Text ('         History',
                                style: TextStyle(
                                  fontSize: 15,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white
                                        
                                ),),
                      
                          
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Color.fromARGB(144, 3, 0, 17),
                  clipBehavior: Clip.hardEdge,
                  child: Container(
                  
                    padding: EdgeInsets.all(10.0),
                    
                    width: 380,
                    height: 40,
                    color: Color.fromARGB(144, 130, 186, 233),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(CupertinoIcons.bell,
                        color: Colors.white,),
                        Text ( 'Notifications',
                                style: TextStyle(
                                  fontSize: 15,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white
                                        
                                ),),
                      
                          
                      ],
                    ),
                  ),
                ),
              ),
              
            ],
          ),
          ),
      ),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Personal Details",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
        // systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Theme.of(context).primaryColor),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        flexibleSpace:Image.asset('assests/back.jfif',fit:BoxFit.cover,),
        actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.logout,
                ),
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                  showDialog(context: context, builder: (BuildContext ){
                    return const AlertDialog(
                      backgroundColor: Color.fromARGB(116, 243, 236, 236),
                      content: Text('Logout Successfuly',
                      style: TextStyle(color: Color.fromARGB(255, 30, 233, 148),
                      fontWeight: FontWeight.bold,),
                      textAlign: TextAlign.center,
                      ),
                      
                    );
                  });
                  logout();
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Center(child: CircularProgressIndicator());
                      });
                },
              )
            ],

          ),
      body: Container(
        color: Color.fromARGB(144, 100, 139, 171),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                  
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                    child: TextFormField(
                      validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Name cannot be blank';
                      } else if (RegExp("[0-9`~!@#%^&*?><,/]").hasMatch(value)) {
                        return "can't enter numbers or spesial characters";
                      }
                      return null;
                    },
                      style: TextStyle(color: Colors.black),
                      // controller: nameController,
                      decoration: InputDecoration(
                        iconColor: Colors.white,
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.00))),
                        hintText: 'Enter your name',
                        hintStyle: TextStyle(color: Colors.black,fontSize: 20,),
                      ),
                      // onChanged: (vals) => name = vals,
                      onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                    controller: fieldText1,
                  ),
                      
                    ),
                  
          
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                    child: TextFormField(
                      validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Address cannot be blank';
                      }
                      return null;
                    },
                      style: TextStyle(color: Colors.black,),
                      // controller: addressController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.00))),
                        hintText: 'Enter your Address',
                        hintStyle: TextStyle(color: Colors.black,fontSize: 20,),
                      ),
                      // onChanged: (vals) => address = vals,
                      onChanged: (value) {
                      setState(() {
                        address = value;
                      });
                    },
                    controller: fieldText2,
                    ),
                  ),
                  
                  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                  child: Row(
                    
                    children:<Widget> [
                      
                      Expanded(
                        // padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                        child: MaterialButton(
                        color:Color.fromARGB(255,0, 0, 77) ,
                        
                        onPressed: _showDatePicker,
                        child: Text('Enter your Date of Birth   ${today.year}/${today.month}/${today.day}',
                          style: TextStyle(color: Colors.white,fontSize: 20,height: 2.5),
                          // selectionColor: Color.fromARGB(255,0, 0, 51),
                          
                          ),
                        )
                      ),
                    ],
                  ),
                ),
                  
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  //   child: TextField(
                  //     style: TextStyle(color: Colors.black),
                  //     decoration: InputDecoration(
                  //       border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.00))),
                  //       hintText: 'Enter your Date of Birth(dd/mm/yy)',
                  //       hintStyle: TextStyle(color: Colors.black,fontSize: 20,),
                  //     ),
                  //     onChanged: (vals) => dob = vals,
                  //   ),
                  // ),
              
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCard = Gender.male;
                              gender='Male';
                            });
                          },
                          child: Container(
                            height: 110,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color.fromARGB(255,0, 0, 51),
                              ),
                              color: selectedCard == Gender.male
                                  ? Colors.blue
                                  : Color.fromARGB(255,0, 0, 77),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables, duplicate_ignore
                              children: [
                                // ignore: prefer_const_constructors
                                // Icon(
                                //   FontAwesomeIcons.mars,
                                //   color: Colors.white,
                                //   size: 45,
                                // ),
                                Image.asset(
                                "assests/man.jpg",
                                width: 50,
                                height: 50,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'MALE',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCard = Gender.female;
                              gender= 'Female';
                            });
                          },
                          child: Container(
                            height: 110,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedCard == Gender.female
                                  ? Colors.blue
                                  : Color.fromARGB(255,0, 0, 77),
                              border: Border.all(
                              color: Color.fromARGB(255,0, 0, 51),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // ignore: prefer_const_constructors
                                // Icon(
                                //   FontAwesomeIcons.venus,
                                //   color: Colors.white,
                                //   size: 45,
                                // ),
                                Image.asset(
                                "assests/woman.jpg",
                                width: 50,
                                height: 50,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'FEMALE',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                            height: 110,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255,0, 0, 77),
                              border: Border.all(
                                color: Color.fromARGB(255,0, 0, 51),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Height',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text(
                                      sliderValue.toString(),
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                    Text(
                                      "cm",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (sliderValue > 1) sliderValue--;
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 15,
                                        child: Icon(
                                          FontAwesomeIcons.minus,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    
                                    Slider(
                                      value: sliderValue.toDouble(),
                                      min: 1.0,
                                      max: 250.0,
                                      onChanged: (value) {
                                        setState(() {
                                          sliderValue = value.toInt();
                                        });
                                      },
                                      inactiveColor: Colors.white,
                                      activeColor: Colors.blue,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (sliderValue < 250) {
                                            sliderValue++;
                                          }
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 15,
                                        child: Icon(
                                          FontAwesomeIcons.plus,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
                
          
          
          
          
          
          
          
          
          
          
          
          
          
          
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                            height: 110,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255,0, 0, 77),
                              border: Border.all(
                                color: Color.fromARGB(255,0, 0, 51),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Weight',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text(
                                      sliderValue1.toString(),
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                    Text(
                                      "Kg",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (sliderValue1 > 0) sliderValue1--;
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 15,
                                        child: Icon(
                                          FontAwesomeIcons.minus,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    
                                    Slider(
                                      value: sliderValue1.toDouble(),
                                      min: 0.0,
                                      max: 250.0,
                                      onChanged: (value) {
                                        setState(() {
                                          sliderValue1 = value.toInt();
                                        });
                                      },
                                      inactiveColor: Colors.white,
                                      activeColor: Colors.blue,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (sliderValue1 < 250) {
                                            sliderValue1++;
                                          }
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius: 15,
                                        child: Icon(
                                          FontAwesomeIcons.plus,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
                // Row(
                //   children: [
              //       ElevatedButton(
              //          onPressed: () {
                        
              //             if (_formKey.currentState!.validate()) {
              //               setState(() {
              //                 result = inputController.text;
              //                 // calculateBMI();
              //                 Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //                 builder: (context) => ResultPage(
              //                       height: sliderValue,
              //                       name2: name,
              //                       address2: address,
              //                       gender: gender,
              //                       dob2: dob, 
              //                       weight: sliderValue1,
              //                       myAge: myAge,
              //                       year : today.year,
              //                       month: today.month,
              //                       day: today.day,
                            
              //                     )
              //                     ),
              //           );
              //               });
              //             }
                          
              //           },
                        
              //           child: const Text(
              //             'SUBMIT DATA',
              //             // ignore: prefer_const_constructors
              //             style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //               color: Colors.black,
              //               fontSize: 20,
              //             ),
              //           ),
              //        ),
              //          ElevatedButton(
              //   onPressed: clearText,
              //   style: ButtonStyle(
              //       backgroundColor: MaterialStateProperty.all(Colors.red)),
              //   child: const Text('RESET',
              //       style: TextStyle(color: Colors.black,
              //                 fontWeight: FontWeight.bold,
              //                 fontSize: 20,)),
              // // ),
              //      ],
              //   ),
        
          
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(
                                height: sliderValue,
                                name2: name,
                                address2: address,
                                gender: gender,
                                dob2: dob, 
                                weight: sliderValue1,
                                myAge: myAge,
                                year : today.year,
                                month: today.month,
                                day: today.day,
                        
                              )
                              ),
                    );
                  },
                  child: Row(
                    children: [
                      Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                        child: Container(
                          height: 50,
                          width: 150,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                          
                                           backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 42, 8, 145))
                                           ),
                           onPressed: () {
                            
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  result = inputController.text;
                                  // calculateBMI();
                                  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResultPage(
                                        height: sliderValue,
                                        name2: name,
                                        address2: address,
                                        gender: gender,
                                        dob2: dob, 
                                        weight: sliderValue1,
                                        myAge: myAge,
                                        year : today.year,
                                        month: today.month,
                                        day: today.day,
                                
                                      )
                                      ),
                            );
                                });
                              }
                              
                            },
                            
                            child: const Text(
                              'SUBMIT',
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                                           ),
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.only(left: 50),
                         child: Container(
                          height: 50,
                          width: 150,
                          child: ElevatedButton(
                                      
                                       onPressed: clearText,
                                       style: ButtonStyle(
                                          
                                           backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 17, 8, 33))
                                           ),
                                       child: const Text('RESET',
                                           style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,)),
                                     ),
                         ),
                       ),
                  
                      // Padding(
                      //   padding: const EdgeInsets.all(15.0),
                      //   child: Container(
                      //     height: 50,
                      //     width: 150,
                      //     decoration: BoxDecoration(
                      //               borderRadius: BorderRadius.circular(60),
                      //                 color: Color.fromARGB(255, 2, 24, 168),
                      //                 //color: Color.fromRGBO(13, 180, 66, 0.922),
                      //               border: Border.all(
                      //                 color: Color.fromARGB(255, 2, 24, 168), 
                            
                                    
                      //               ),
                      //             ),
                      //     // child: Center(
                      //     //   child: Text(
                      //     //     'SUBMIT',
                      //     //     // ignore: prefer_const_constructors
                      //     //     style: TextStyle(
                      //     //       fontWeight: FontWeight.bold,
                      //     //       color: Colors.white,
                      //     //       fontSize: 20,
                                
                      //     //     ),
                              
                      //     //   ),
                      //     // ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 50),
                      //   child: Container(
                      //     height: 50,
                      //     width: 150,
                      //     decoration: BoxDecoration(
                      //               borderRadius: BorderRadius.circular(60),
                      //                 color: Color.fromARGB(255, 2, 24, 168),
                      //                 //color: Color.fromRGBO(13, 180, 66, 0.922),
                      //               border: Border.all(
                      //                 color: Color.fromARGB(255, 2, 24, 168), 
                            
                                    
                      //               ),
                      //             ),
                          
                      //     //height: 50,
                      //     //width: double.infinity,
                      //     //color: Color.fromARGB(255, 2, 24, 168),
                      //     // ignore: prefer_const_constructors
                      //     child: Center(
                      //       child: Text(
                            
                      //         'RESET',
                      //         // ignore: prefer_const_constructors
                      //         style: TextStyle(
                      //           fontWeight: FontWeight.bold,
                      //           color: Colors.white,
                      //           fontSize: 20,
                      //         ),
                              
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      
          
                    ],
                  ),
                  
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }
}

