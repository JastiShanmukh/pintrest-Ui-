import 'package:flutter/material.dart';

import 'package:medium_ui/constants.dart';
class Home extends StatelessWidget {
  const Home({
    Key key,
    @required this.width,
    @required this.height,
    @required this.topBar,
    this.index,
  }) : super(key: key);

  final double width;
  final double height;
  final  index;
  final List<String> topBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: width,
          height: height,
          color: Colors.white,
          child: Stack(children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  TopBar(width: width, height: height, topBar: topBar, pageint: 0),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    width: width,
                    color: Colors.white,
                    height: height*2.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Stack(children:[
                               Posts(
                                width: width,
                                image: 'images/1.jpg',
                                title: 'Help India Fight COVID',
                              ),
                            Positioned(top: 220.0,left: 45.0, child: InkWell(onTap: (){  }, child: Container(decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20.0)),  child: Center(child: Text("Donate",style: TextStyle(fontSize: 20.0,color: Colors.white),)),width: width*0.25,height: 40.0,)))
                              ]
                            ),
                            Posts(
                              width: width,
                              image: 'images/2.jpg',
                              title: 'Smiley Faces',
                            ),
                            Posts(
                              width: width,
                              image: 'images/3.jpg',
                              title: 'Long title with description',
                            ),
                            Posts(
                              width: width,
                              image: 'images/10.jpg',
                             
                            ),
                            Posts(
                              width: width,
                              image: 'images/11.jpg',
                              title: 'What',
                            ),
                            Posts(
                              width: width,
                              image: 'images/12.jpg',
                              title: 'What',
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Posts(
                              width: width,
                              image: 'images/4.jpg',
                              title: 'Hello',
                            ),
                            Posts(
                              width: width,
                              image: 'images/5.jpg',
                              title: 'What',
                            ),
                            Posts(
                              width: width,
                              image: 'images/6.jpg',
                              title: 'What',
                            ),
                           
                            Posts(
                              width: width,
                              image: 'images/8.jpg',
                              title: 'What',
                            ),
                            Posts(
                              width: width,
                              image: 'images/9.jpg',
                              title: 'What',
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            BottomBar(width: width, height: height)
          ]),
        ),
      );
  }
}

