import 'dart:convert';

User userFromJson(String str) => User.fromJson(jsonDecode(str));

class User {
  User({this.name, this.age, this.roll, this.gender, this.address});
  String? name;
  int? age;
  int? roll;
  String? address;
  String? gender;

  factory User.fromJson(Map<String, dynamic> jsonMap) => User(
        address: jsonMap['address'],
        name: jsonMap['name'],
        age: jsonMap['age'],
        gender: jsonMap['gender'],
        roll: jsonMap['roll'],
      );
  Map<String , dynamic> toMap(){
    return {
      "name" : this.name ,
      "age" : this.age ,
      "roll" : this.roll ,
      "gender" : this.gender ,
      "address" : this.address ,

    };
  }
}
