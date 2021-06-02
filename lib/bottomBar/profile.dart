import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(2, 4, 3, 1),
      body: Center(child: Container(width: 160,height: 60,decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20.0),boxShadow: [BoxShadow(color: Colors.white,offset: Offset(-4.0,-6.0),blurRadius: 5.0)]),),),
    );
  }
}