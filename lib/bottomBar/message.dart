import 'package:flutter/material.dart';
class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(backgroundColor: Colors.white,),
        body: Container(color: Colors.grey[200],),
        
      ),
    );
  }
}