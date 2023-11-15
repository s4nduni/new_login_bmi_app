// ignore_for_file: prefer_const_constructors
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'dart:js_interop';


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_bmi_cal/bmi_data_model.dart';
// ignore: unused_import
import 'package:new_bmi_cal/gender.dart';
import 'package:new_bmi_cal/previous.dart';
// ignore: unused_import
// import 'package:new_bmi_cal/bmi_data_model.dart';
import 'package:pretty_gauge/pretty_gauge.dart';

import 'calculate.dart';
//import 'bmicalpage.dart';


// ignore: must_be_immutable
class ResultPage extends StatefulWidget {
  
  String address2;
  String name2;
  int height;
  int weight;
  String gender;
  String dob2;
  String myAge = '';
  String? bmiStatus;

  String? bmiInterpretation;

  Color? bmiStatusColor;
  
  int year;
  int month;
  int day;

  // ignore: use_key_in_widget_constructors
  ResultPage({
    required this.height, 
    required this.weight,
    required this.name2, 
    required this.address2,
    required this.gender,
    required this.dob2,required this.myAge,
    required this.year,
    required this.month,
    required this.day,
    });

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  int sliderValue = 100;
  int weight = 40;
  String myAge = '';
  String name2 = '';
  String address2 ='';
  // int height=0;
  double bmires = 0;
  String dob2 = '';
  String? bmiStatus;

  String? bmiInterpretation;

  Color? bmiStatusColor;
  //int bmiAge = Age;
  void initState() {
    Logic l = Logic();
    bmires = l.calculateBMI(widget.height, widget.weight);
    super.initState();
  }
  // final nameController = TextEditingController();
  // final addressController = TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    setBmiInterpretation();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "User Information",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        flexibleSpace:Image.asset('assests/back.jfif',fit:BoxFit.cover,),
      ),
      body: Center(
        
        child: Container(
          color: Color.fromARGB(144, 100, 139, 171),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                color: Color.fromARGB(144, 55, 78, 97),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  
                  width: 400,
                  height: 35,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    "Personal Details",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                color: Color.fromARGB(144, 130, 186, 233),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  
                  width: 400,
                  height: 33,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    widget.name2,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                color: Color.fromARGB(144, 130, 186, 233),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  
                  width: 400,
                  height: 33,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    widget.address2,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                color: Color.fromARGB(144, 130, 186, 233),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  width: 400,
                  height: 33,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    "Height       : ${widget.height}",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  
                  
                ),
              ),
              Card(
                color: Color.fromARGB(144, 130, 186, 233),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  
                  width: 400,
                  height: 33,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    
                    "Weight       :   ${widget.weight}",
                    
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              
              Card(
                color: Color.fromARGB(144, 130, 186, 233),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  
                  width: 400,
                  height: 33,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    "       Gender     :    ${widget.gender}",
                    
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                color: Color.fromARGB(144, 130, 186, 233),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  
                  width: 400,
                  height: 33,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    
                    "Date Of Birth     :   ${widget.year}/${widget.month}/${widget.day}",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                color: Color.fromARGB(144, 55, 78, 97),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  
                  width: 400,
                  height: 35,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    "Other Details",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              
              Card(
                color: Color.fromARGB(144, 130, 186, 233),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  
                  width: 400,
                  height: 34,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    "   Age         :   ${widget.myAge}",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                color: Color.fromARGB(144, 130, 186, 233),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  
                  width: 400,
                  height: 34,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    "         BMI        :   ${bmires.toStringAsFixed(2)} ",

                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              
              Card(
              color: Color.fromARGB(144, 130, 186, 233),
              elevation: 12,
              shape: const RoundedRectangleBorder(),
              
              
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  
                  children: [

                    PrettyGauge(
                      gaugeSize: 150,
                      minValue: 0,
                      maxValue: 40,
                      segments: [
                        GaugeSegment('UnderWeight', 18.5, Colors.red),
                        GaugeSegment('Normal', 6.4, Colors.green),
                        GaugeSegment('OverWeight', 5, Colors.orange),
                        GaugeSegment('Obese', 10.1, Colors.pink),
                      ],
                      
                      valueWidget: Text(
                      
                        bmires.toStringAsFixed(2),
                        style: const TextStyle(fontSize: 15),
                      ),
                      currentValue: bmires.toDouble(),
                      needleColor: const Color.fromARGB(255, 36, 50, 61),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      bmiStatus!,
                      style: TextStyle(fontSize: 12, color: bmiStatusColor!),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      bmiInterpretation!,
                      style: const TextStyle(fontSize: 12),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    
                    
                  ]

                  )
                  ),
            
                  
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: ElevatedButton(
                            onPressed: (){
                              
                             
                              addBMIData(widget.name2,widget.address2,widget.dob2,widget.gender,widget.myAge,widget.height,widget.weight,widget.year,bmires,bmiStatus);
                    
                showDialog(context: context, builder: (BuildContext ){
                    return const AlertDialog(
                      backgroundColor: Color.fromARGB(116, 243, 236, 236),
                      content: Text('Data Successfuly Saved',
                      style: TextStyle(color: Color.fromARGB(255, 30, 233, 148),
                      fontWeight: FontWeight.bold,),
                      textAlign: TextAlign.center,
                      ),
                      
                    );
                  }); 
                              
                              
                            }, 
                            child: Text('    Save Data    '),
                            ),
                    ),
                      Padding(
                        padding: const EdgeInsets.only(left: 90.0),
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context)=> Previous())
                          );
                      
                        }, 
                        child: Text('Previous Data')
                        ),
                      )
                  ],
                )
              
                  
              ],
         ),
          

         
         ),
      ),
      
    );
  
  }
  void setBmiInterpretation() {
    if (bmires > 30) {
      bmiStatus = "Obese\n\n";
      bmiInterpretation = "\n\nPlease work to reduce obesity";
      bmiStatusColor = Colors.pink;
    } else if (bmires >= 25) {
      bmiStatus = "Overweight\n\n";
      bmiInterpretation = "\n\nDo regular exercise & reduce the weight";
      bmiStatusColor = Colors.orange;
    } else if (bmires >= 18.5) {
      bmiStatus = "Normal\n\n";
      bmiInterpretation = "\n\nEnjoy, You are fit";
      bmiStatusColor = Colors.green;
    } else if (bmires < 18.5) {
      bmiStatus = "Underweight\n\n";
      bmiInterpretation = "\n\nTry to increase the weight";
      bmiStatusColor = Colors.red;
    }
  }
}
// void addBMIData(String address2, String name2,int height,int weight,String gender,String dob2,String myAge,String? bmiStatus ){
//   // ignore: unused_local_variable
//   var document = Temperatures(
//      widgetName2: 'name2', widgetHeight: '', widgetWeight: '', widgetAddress2: '', widgetGende: '', widgetMyAge: '', bmiresToStringAsFixed2: '',

//   );
//   FirebaseFirestore.instance.collection('BMI Data').add(document.toJS as Map<String, dynamic>);
// }


void addBMIData(String name2, String address2,String dob2, String gender,String myAge,int height,int weight, int year,double bmires,String? bmiStatus ){
  print("$address2,$name2");
  final user = FirebaseAuth.instance.currentUser!;
   var document = UserModel(
    email: user.email!,
    name2: name2, 
    address2: address2, 
    Height: '$height',
    Weight: '$weight', 
    Gender: gender, 
    MyAge: myAge, 
    bmiresToStringAsFixed2: bmires.toStringAsFixed(2), 
    bmiStatus: '$bmiStatus',);
  //  CollectionReference collRef = FirebaseFirestore.instance.collection('client');
  //                       collRef.add({
  //                         'Name' : name2,
  //                         'Address' : address2,
  //                         'Year of birth': year,
  //                         'Gender':gender,
  //                         'Age': myAge,
  //                         'Height': height,
  //                         'Weight': weight,
  //                         'BMI Result': bmires.toStringAsFixed(2),
  //                         'BMI Status':bmiStatus,
  //                       });
  FirebaseFirestore.instance.collection('client').add(document.toJson());
                        
}