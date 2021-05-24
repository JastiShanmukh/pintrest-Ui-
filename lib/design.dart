import 'package:flutter/material.dart';
import 'package:medium_ui/constants.dart';

class Design extends StatefulWidget {
  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
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
                    width: width, height: height, topBar: topBar, pageint: 2),
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
                            image: 'images/design/design1.jpg',
                            title: 'Help India Fight COVID',
                          ),
                          Posts(
                            width: width,
                            image: 'images/design/design2.jpg',
                            title: 'Smiley Faces',
                          ),
                          Posts(
                            width: width,
                            image: 'images/design/design3.jpg',
                            title: 'Long title with description',
                          ),
                          Posts(
                            width: width,
                            image: 'images/design/design9.jpg',
                            title: 'What',
                          ),
                     
                        ],
                      ),
                      Column(
                        children: [
                          Posts(
                            width: width,
                            image: 'images/design/design4.jpg',
                            title: 'Hello',
                          ),
                          Posts(
                            width: width,
                            image: 'images/design/design5.jpg',
                            title: 'What',
                          ),
                          Posts(
                            width: width,
                            image: 'images/design/design6.jpg',
                            title: 'What',
                          ),
                          Posts(
                            width: width,
                            image: 'images/design/design8.jpg',
                            title: 'What',
                          ),
                         
                        ],
                      )
                    ],
                  ),
                )
              ]))
            ])));
  }
}
