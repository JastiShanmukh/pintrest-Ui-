import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      width: width,
                      height: height * 0.05,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: ()=>index,
                            child: Container(
                                width: width * 0.2,
                                height: height * 0.05,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: index == 0 ? Colors.black : Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    topBar[index],
                                    style: GoogleFonts.roboto(
                                        fontSize: 20.0,
                                        color: index == 0
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                )),
                          );
                        },
                        itemCount: topBar.length,
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(
                          width: 2.5,
                        ),
                      ),
                    ),
                  ),
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
                                title: 'Hello',
                              ),
                            Positioned(top: 220.0,left: 45.0, child: InkWell(onTap: (){  }, child: Container(decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20.0)),  child: Center(child: Text("Donate",style: TextStyle(fontSize: 20.0,color: Colors.white),)),width: width*0.25,height: 40.0,)))
                              ]
                            ),
                            Posts(
                              width: width,
                              image: 'images/2.jpg',
                              title: 'What',
                            ),
                            Posts(
                              width: width,
                              image: 'images/3.jpg',
                              title: 'Long title with description',
                            ),
                            Posts(
                              width: width,
                              image: 'images/10.jpg',
                              title: 'What',
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
                              image: 'images/7.jpg',
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
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(icon: Icon(Icons.home,),iconSize:30.0 , onPressed: () {}),
                        IconButton(icon: Icon(Icons.search),iconSize:30.0,color: Colors.grey , onPressed: () {}),
                        IconButton(icon: Icon(Icons.chat),iconSize:30.0,color: Colors.grey , onPressed: () {}),
                        IconButton(icon: Icon(Icons.person),iconSize:30.0 ,color: Colors.grey, onPressed: () {})
                      ],
                    ),
                    width: width * 0.7,
                    height: height * 0.09,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.0)),
                  )),
            )
          ]),
        ),
      );
  }
}

class Posts extends StatelessWidget {
  const Posts({Key key, @required this.width, @required this.image, this.title})
      : super(key: key);

  final double width;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        margin: EdgeInsets.all(5.0),
        width: width / 2.3,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                image,
              ),
            ),
            ListTile(
              title: Text(title),
              trailing:
                  IconButton(icon: Icon(Icons.more_horiz), onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
