import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
    @required this.width,
    @required this.height,
    @required this.topBar,
    @required this.pageint,
  }) : super(key: key);
  final int pageint;
  final double width;
  final double height;
  final List<String> topBar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        width: width,
        height: height * 0.05,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => index,
              child: Container(
                  width: width * 0.2,
                  height: height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: index == pageint ? Colors.black : Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      topBar[index],
                      style: GoogleFonts.roboto(fontWeight:FontWeight.w700,
                          fontSize: 20.0,
                          color: index == pageint
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
    );
  }
}





class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              title: title!=null? Text(title,style: GoogleFonts.roboto(fontSize:15.0,fontWeight: FontWeight.w500 )):Text(""),
              trailing:
                  IconButton(icon: Icon(Icons.more_horiz), onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}  

class TodayPost extends StatelessWidget {
  const TodayPost({
    Key key,
    @required this.width,
    this.heading,this.description,
    this.imageNum,
  }) : super(key: key);

  final double width;
  final String heading;
  final String description;
  final int imageNum;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:30.0),
      child: UnconstrainedBox(
          child: Container(
              width: width * 0.78,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  color: Colors.black12,
                          offset: Offset(3.0, 3.0),
                          blurRadius: 20.0
                )],
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.transparent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    ClipRRect(
                      child: Image.asset('images/today/today$imageNum.jpg'),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    Positioned(
                        top: width * 0.7,
                        child: Container(
                          width: width * 0.78,
                          child: Column(
                            children: [
                              Text(
                                heading,
                                style: GoogleFonts.roboto(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w600,color: Colors.white70),
                              ),
                                Padding(
                                  padding: const EdgeInsets.only(left:30.0 ),
                                  child: Text(
                                  description,
                                  style: GoogleFonts.roboto(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w600,color: Colors.white),
                              ),
                                )
                            ],
                          ),
                          
                        )),
                 SizedBox(height: 30.0,) ],
                ),
              )),),
    );
  }
}
