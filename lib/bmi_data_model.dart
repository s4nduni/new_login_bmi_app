import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
    final String email;
    final String name2;
    final String address2;
    final String Height;
    final String Weight;
    final String Gender;
    final String MyAge;
    final String bmiresToStringAsFixed2;
    final String bmiStatus;

    UserModel({
        required this.email,
        required this.name2,
        required this.address2,
        required this.Height,
        required this.Weight,
        required this.Gender,
        required this.MyAge,
        required this.bmiresToStringAsFixed2,
        required this.bmiStatus,
    });

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['email'] = this.email;
  //   data['name'] = this.name2;
  //   data['address'] = this.address2;
  //   data['myAge'] = this.MyAge;
  //   data['height'] = this.Height;
  //   data['weight'] = this.Weight;
  //   data['gender'] = this.Gender;
  //   data['bmires'] = this.bmiresToStringAsFixed2;
  //   data['bmiStatus'] = this.bmiStatus;

  //   return data;
  // }

  toJson(){
    return {
      "email" : email,
      "name": name2,
      "address": address2,
      "myAge": MyAge,
      "height": Height,
      "weight": Weight,
      "gender": Gender,
      "bmires": bmiresToStringAsFixed2,
      "bmiStatus": bmiStatus,

      
    };
  }

  factory UserModel.fromSnapshot(
    DocumentSnapshot<Map<String, dynamic>> document ){
      final data = document.data()!;
      return UserModel(
        email: data["email"], 
        name2: data["name2"], 
        address2: data["address2"],
        Height: data["Height"], 
        Weight: data["Weight"], 
        Gender: data["Gender"], 
        MyAge: data["MyAge"], 
        bmiresToStringAsFixed2: data["bmiresToStringAsFixed2"], 
        bmiStatus: data["bmiStatus"],
        );
    }
}