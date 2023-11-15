import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Previous extends StatelessWidget {
  const Previous({super.key});

  @override
  Widget build(BuildContext context) {
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
      body:Center(
        
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
                  height: 40,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Text(
                    "Previous Details",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection('client').where('email',isEqualTo: FirebaseAuth.instance.currentUser!.email).snapshots(),
                builder: (context,snapshot){
                  List<Row> clientWidgets = [];
                  if(snapshot.hasData){
                    final clients = snapshot.data?.docs.reversed.toList();
                    for(var client in clients!){
                      final clientWidget = Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Text (client['name'],
                          // style: const TextStyle(
                          //   fontSize: 15,
                          //   fontWeight: FontWeight.bold,

                          // ),),
                          // Text (client['address'],
                          // style: const TextStyle(
                          //   fontSize: 15,
                          //   fontWeight: FontWeight.bold,

                          // ),),
                          // Text (client['gender'],
                          // style: const TextStyle(
                          //   fontSize: 15,
                          //   fontWeight: FontWeight.bold,

                          // ),),
                          // Text (client['height'],
                          // style: const TextStyle(
                          //   fontSize: 15,
                          //   fontWeight: FontWeight.bold,

                          // ),),
                          // Text (client['weight'],
                          // style: const TextStyle(
                          //   fontSize: 15,
                          //   fontWeight: FontWeight.bold,

                          // ),),
                          Card(
                color: Color.fromARGB(144, 130, 186, 233),
                clipBehavior: Clip.hardEdge,
                child: Container(
    
                  padding: EdgeInsets.all(10.0),
                  
                  width: 380,
                  height: 40,
                  color: Color.fromARGB(144, 130, 186, 233),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text (client['bmires'],
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                      
                              ),),
                        
                        Text (client['bmiStatus'],
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                                  
                          ),),
                        const Icon(
                          Icons.delete,
                        )
                    ],
                  ),
                ),
              ),
                          // Text (client['bmires'],
                          // style: const TextStyle(
                          //   fontSize: 15,
                          //   fontWeight: FontWeight.bold,

                          // ),),
                          // Text (client['bmiStatus'],
                          // style: const TextStyle(
                          //   fontSize: 15,
                          //   fontWeight: FontWeight.bold,

                          // ),),
                          
                        ],
                        );
                        clientWidgets.add(clientWidget);

                    }
                  }

                  return Expanded(
                    child: ListView(
                      children:clientWidgets,
                      )
                      );


                })
            ],
          ),
        ),
      ),       
    );
  }
}