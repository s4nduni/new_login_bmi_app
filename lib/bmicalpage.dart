// // ignore_for_file: prefer_const_constructors
// //import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter/material.dart';
// import 'calculate.dart';


// // ignore: must_be_immutable
// class bmicalpage extends StatefulWidget {
//   int height;
//   int weight;
//   int age;
//   // ignore: use_key_in_widget_constructors
//   bmicalpage({required this.height, required this.weight, required this.age});

//   @override
//   _bmicalpageState createState() => _bmicalpageState();
// }

// class _bmicalpageState extends State<bmicalpage> {
//   int sliderValue = 100;
//   int weight = 40;
//   int Age = 10;
//   // int height=0;
//   double bmires = 0;

//   //int bmiAge = Age;
//   void initState() {
//     Logic l = Logic();
//     bmires = l.calculateBMI(widget.height, widget.weight);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "YOUR INFROMATION",
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.pink,
//         foregroundColor: Colors.white,
//         flexibleSpace:Image.asset('assests/back.jfif',fit:BoxFit.cover,),
//       ),
//       body: Center(
        
//         child: Container(
//           decoration: BoxDecoration(color:  Color.fromARGB(144, 100, 139, 171),),
          
//           //color: Color.fromARGB(144, 100, 139, 171),
//           child: Column(
            
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//           Container(
//           margin: EdgeInsets.all(10),
//           child: Card(
//             color: Color.fromARGB(144, 130, 186, 233),
//             // clipBehavior is necessary because, without it, the InkWell's animation
//             // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)
//             // This comes with a small performance cost, and you should not set [clipBehavior]
//             // unless you need it.
//             clipBehavior: Clip.hardEdge,
//             child: InkWell(
//               splashColor: Colors.blue.withAlpha(30),
//               onTap: () {
//                 debugPrint('Card tapped.');
//               },
//               child: const SizedBox(
//                 width: 300,
//                 height: 50,
//               child: Row(
//               mainAxisAlignment: MainAxisAlignment.start ,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget> [
//                Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text(
//                   "Weight",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color.fromARGB(255,0, 0, 77)),
//                               ),
//                 ),
//               // Text(
//               //   '${widget.weight}',
//               //   style: TextStyle(
//               //       fontSize: 40,
//               //       fontWeight: FontWeight.bold,
//               //       color: Color.fromARGB(255,0, 0, 77),),
//               // ),
                
                
                
              
//                 ],
//                 ),
//           ),
//         ),
//         ),
//           ),
//         //   Container(
//         //   child: Card(
//         //     // clipBehavior is necessary because, without it, the InkWell's animation
//         //     // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)
//         //     // This comes with a small performance cost, and you should not set [clipBehavior]
//         //     // unless you need it.
//         //     clipBehavior: Clip.hardEdge,
//         //     child: InkWell(
//         //       splashColor: Colors.blue.withAlpha(30),
//         //       onTap: () {
//         //         debugPrint('Card tapped.');
//         //       },
//         //       child: const SizedBox(
//         //         width: 300,
//         //         height: 100,
//         //       child: Row(
//         //       mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
//         //       crossAxisAlignment: CrossAxisAlignment.center,
//         //       children: <Widget> [
//         //         Text(
//         //         "BMI RESULT IS :",
//         //         style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//         //       ),
//         //       // Text(
//         //       //   '${bmires.toStringAsFixed(2)}',
//         //       //   style: TextStyle(
//         //       //       fontSize: 40,
//         //       //       fontWeight: FontWeight.bold,
//         //       //       color: Color.fromARGB(255,0, 0, 77),),
//         //       // ),
                
              
//         //         ],
//         //         ),
//         //   ),
//         // ),
//         // ),
//         //   ),
//             // children: [

//             // Text(
//             //     "NAME IS :",
//             //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             //   ),
//             //   Text(
//             //     '${widget.name2}',
//             //     style: TextStyle(
//             //         fontSize: 40,
//             //         fontWeight: FontWeight.bold,
//             //         color: Color.fromARGB(255,0, 0, 77),),
//             //   ),
//             //   Text(
//             //     "Address IS :",
//             //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             //   ),
//             //   Text(
//             //     '${widget.address2}',
//             //     style: TextStyle(
//             //         fontSize: 40,
//             //         fontWeight: FontWeight.bold,
//             //         color: Color.fromARGB(255,0, 0, 77),),
//             //   ),

//             // Text(
//             //     "GENDER IS :",
//             //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             //   ),
//             //   Text(
//             //     '${widget.key}',
//             //     style: TextStyle(
//             //         fontSize: 40,
//             //         fontWeight: FontWeight.bold,
//             //         color: Color.fromARGB(255,0, 0, 77),),
//             //   ),





//             //   Text(
//             //     "AGE IS :",
//             //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             //   ),
//             //   Text(
//             //     '${widget.age}',
//             //     style: TextStyle(
//             //         fontSize: 40,
//             //         fontWeight: FontWeight.bold,
//             //         color: Color.fromARGB(255,0, 0, 77),),
//             //   ),


//             //   Text(
//             //     "HEIGHT IS :",
//             //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             //   ),
//             //   Text(
//             //     '${widget.height}',
//             //     style: TextStyle(
//             //         fontSize: 40,
//             //         fontWeight: FontWeight.bold,
//             //         color: Color.fromARGB(255,0, 0, 77),),
//             //   ),


//             //   Text(
//             //     "WEIGHT IS :",
//             //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             //   ),
//             //   Text(
//             //     '${widget.weight}',
//             //     style: TextStyle(
//             //         fontSize: 40,
//             //         fontWeight: FontWeight.bold,
//             //         color: Color.fromARGB(255,0, 0, 77),),
//             //   ),




          



//             //   Text(
//             //     "BMI RESULT IS :",
//             //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             //   ),
//             //   Text(
//             //     '${bmires.toStringAsFixed(2)}',
//             //     style: TextStyle(
//             //         fontSize: 40,
//             //         fontWeight: FontWeight.bold,
//             //         color: Color.fromARGB(255,0, 0, 77),),
//             //   ),
            
//              ],
//          ),
//          ),
//       ),
//     );
//   }
// }










































// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'calculate.dart';

// ignore: must_be_immutable
class bmicalpage  extends StatefulWidget {
  int height;
  int weight;
  int age;
  // ignore: use_key_in_widget_constructors
  bmicalpage(
      {required this.height,
      required this.weight,
      required this.age, 
      });

  @override
  _bmicalpageState createState() => _bmicalpageState();
}

class _bmicalpageState extends State<bmicalpage> {
  double bmires = 0;
  int sliderValue = 0;
  int weight = 40;
  int Age = 10;
  String name = '';
  String address = '';
  
 
  //int bmiAge = Age;
  void initState() {
    Logic l = Logic();
    bmires = l.calculateBMI(widget.height, widget.weight);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI RESULTS",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(152, 31, 226, 0.929),
        foregroundColor: Colors.white,
        flexibleSpace:Image.asset('assests/back.jfif',fit:BoxFit.cover,),
      ),
  body: Center(
        child: Container(
          decoration: BoxDecoration(color: Color.fromARGB(144, 100, 139, 171),),



          //color: Color.fromARGB(144, 100, 139, 171),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
          Container(
          color: Color.fromARGB(144, 100, 139, 171),
          margin: EdgeInsets.all(10),
          child: Card(
            color: Color.fromARGB(144, 130, 186, 233),
            // clipBehavior is necessary because, without it, the InkWell's animation
            // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)
            // This comes with a small performance cost, and you should not set [clipBehavior]
            // unless you need it.
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                debugPrint('Card tapped.');
              },
              child: const SizedBox(
                width: 300,
                height: 100,
                
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center ,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                Text(
                "BMI RESULT IS : ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              // Text(
              //   '${bmires.toStringAsFixed(2)}',
              //   style: TextStyle(
              //       fontSize: 40,
              //       fontWeight: FontWeight.bold,
              //       color: Color.fromARGB(255,0, 0, 77),),
              // ),
                
              
                ],
                ),
          ),
        
          ),
          ),
          ),
            ]
      ),
      ),),
      );
      
  }
}