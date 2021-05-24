import 'package:flutter/material.dart';
import 'package:medium_ui/Today.dart';
import 'package:medium_ui/design.dart';
import 'package:medium_ui/flutter.dart';
import 'package:medium_ui/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pinterest',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final _pageController=new PageController(initialPage: 0);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List<String> topBar = ["All", "Today", "UI", "Flutter"];

  return   PageView(controller: _pageController,
    children:[ Home(width: width, height: height, topBar: topBar,),
    Today(),
    Design(),
    Flutter()
     ] );
  }
}

