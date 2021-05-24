import 'package:flutter/material.dart';
import 'package:medium_ui/constants.dart';
class Flutter extends StatefulWidget {
  @override
  _FlutterState createState() => _FlutterState();
}

class _FlutterState extends State<Flutter> {
  @override
  Widget build(BuildContext context) {
        double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List<String> topBar = ["All", "Today", "UI", "Flutter"];
    return Scaffold(
        body: Container(
            width: width,
            height: height,
            color: Colors.white,
            child: Stack(children: [
              SingleChildScrollView(
                  child: Column(children: [
                SizedBox(
                  height: 50.0,
                ),
                TopBar(
                    width: width, height: height, topBar: topBar, pageint: 3),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.all(8.0), 
                  width: width,
                  color: Colors.white,
                  //height: height ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Posts(
                            width: width,
                            image: 'images/flutter/flutter1.jpg',
                            title: 'Help India Fight COVID',
                          ),
                          Posts(
                            width: width,
                            image: 'images/flutter/flutter2.jpg',
                            title: 'Smiley Faces',
                          ),
                          Posts(
                            width: width,
                            image: 'images/flutter/flutter3.jpg',
                            title: 'Long title with description',
                          ),
                          Posts(
                            width: width,
                            image: 'images/flutter/flutter9.jpg',
                            title: 'What',
                          ),
                          Posts(
                            width: width,
                            image: 'images/flutter/flutter7.jpg',
                            title: 'What',
                          ),
                          Posts(
                            width: width,
                            image: 'images/flutter/flutter12.jpg',
                            title: 'What',
                          ),
                     
                        ],
                      ),
                      Column(
                        children: [
                          Posts(
                            width: width,
                            image: 'images/flutter/flutter4.jpg',
                            title: 'Hello',
                          ),
                          Posts(
                            width: width,
                            image: 'images/flutter/flutter5.jpg',
                            title: 'What',
                          ),
                          Posts(
                            width: width,
                            image: 'images/flutter/flutter6.jpg',
                            title: 'What',
                          ),
                          Posts(
                            width: width,
                            image: 'images/flutter/flutter8.jpg',
                            title: 'What',
                          ),
                          Posts(
                            width: width,
                            image: 'images/flutter/flutter10.jpg',
                            title: 'What',
                          ),
                          Posts(
                            width: width,
                            image: 'images/flutter/flutter11.jpg',
                            title: 'What',
                          ),
                     
                         
                        ],
                      )
                    ],
                  ),
                )
              ]))
            ]))
    );
  }
}