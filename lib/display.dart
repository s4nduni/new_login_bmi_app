// ignore_for_file: prefer_const_constructors
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'calculate.dart';
import 'package:pretty_gauge/pretty_gauge.dart';
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
  String name = '';
  String address ='';
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
                  height: 45,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    "Personal Details",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                color: Color.fromARGB(144, 130, 186, 233),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  
                  width: 400,
                  height: 38,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    widget.name2,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                color: Color.fromARGB(144, 130, 186, 233),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  
                  width: 400,
                  height: 38,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    widget.address2,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                color: Color.fromARGB(144, 130, 186, 233),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  width: 400,
                  height: 38,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    "Height       : ${widget.height}",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  
                  
                ),
              ),
              Card(
                color: Color.fromARGB(144, 130, 186, 233),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  
                  width: 400,
                  height: 38,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    
                    "Weight       :   ${widget.weight}",
                    
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              
              Card(
                color: Color.fromARGB(144, 130, 186, 233),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  
                  width: 400,
                  height: 38,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    "       Gender     :    ${widget.gender}",
                    
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                color: Color.fromARGB(144, 130, 186, 233),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  
                  width: 400,
                  height: 38,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    
                    "Date Of Birth     :   ${widget.year}/${widget.month}/${widget.day}",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                color: Color.fromARGB(144, 55, 78, 97),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  
                  width: 400,
                  height: 45,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    "Other Details",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              
              Card(
                color: Color.fromARGB(144, 130, 186, 233),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  
                  width: 400,
                  height: 38,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    "   Age         :   ${widget.myAge}",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                color: Color.fromARGB(144, 130, 186, 233),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  
                  width: 400,
                  height: 38,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    "         BMI        :   ${bmires.toStringAsFixed(2)} ",

                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
