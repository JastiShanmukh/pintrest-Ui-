import 'package:flutter/material.dart';

import 'package:medium_ui/constants.dart';
class Home extends StatelessWidget {
  const Home({
    Key key,
     this.width,
  this.height,
    this.topBar,
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
                               Posts(isRequired: 0,
                                width: width,
                                image: 'images/home/1.jpg',
                                title: 'Help India Fight COVID',
                              ),
                            Positioned(top: 220.0,left: 45.0, child: InkWell(onTap: (){  }, child: Container(decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20.0)),  child: Center(child: Text("Donate",style: TextStyle(fontSize: 20.0,color: Colors.white),)),width: width*0.25,height: 40.0,)))
                              ]
                            ),
                            Posts(isRequired: 0,
                              width: width,
                              image: 'images/home/2.jpg',
                              title: 'Smiley Faces',
                            ),
                            Posts(isRequired: 0,
                              width: width,
                              image: 'images/home/3.jpg',
                              title: 'Long title with description',
                            ),
                            Posts(isRequired: 0,
                              width: width,
                              image: 'images/home/10.jpg',
                             
                            ),
                            Posts(isRequired: 0,
                              width: width,
                              image: 'images/home/11.jpg',
                              title: 'What',
                            ),
                            Posts(isRequired: 0,
                              width: width,
                              image: 'images/home/12.jpg',
                              title: 'What',
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Posts(isRequired: 0,
                              width: width,
                              image: 'images/home/4.jpg',
                              title: 'Hello',
                            ),
                            Posts(isRequired: 0,
                              width: width,
                              image: 'images/home/5.jpg',
                              title: 'What',
                            ),
                            Posts(isRequired: 0,
                              width: width,
                              image: 'images/home/6.jpg',
                              title: 'What',
                            ),
                           
                            Posts(isRequired: 0,
                              width: width,
                              image: 'images/home/8.jpg',
                              title: 'What',
                            ),
                            Posts(isRequired: 0,
                              width: width,
                              image: 'images/home/9.jpg',
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

