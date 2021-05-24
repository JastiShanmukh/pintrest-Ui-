import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medium_ui/constants.dart';

class Today extends StatefulWidget {
  @override
  _TodayState createState() => _TodayState();
}

class _TodayState extends State<Today> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List<String> topBar = ["All", "Today", "UI", "Flutter"];
    return Scaffold(
        body: Container(
            width: width,
            height: height * 2,
            color: Colors.white,
            child: Stack(children: [
              SingleChildScrollView(
                  child: Column(children: [
                SizedBox(
                  height: 50.0,
                ),
                TopBar(
                  width: width,
                  height: height,
                  topBar: topBar,
                  pageint: 1,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "23 May 2021",
                        style: GoogleFonts.roboto(fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Center(
                          child: Text(
                        "Stay INspired",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            letterSpacing: 1.0),
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: width * 0.78,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(3.0, 3.0),
                          blurRadius: 20.0)
                    ],
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset('images/today/today1.jpg'),
                        Center(
                          child: Padding(              
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 2),                                                     
                            child: Text("What you need to know: Supine",
                                style: GoogleFonts.roboto(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700)),
                          ),
                        ),
                        Center(
                            child: Text("Vs Prone",
                                style: GoogleFonts.roboto(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700))),
                        Padding(
                          padding: const EdgeInsets.only(left: 60.0),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/today/mygov.jpg'),
                              backgroundColor: Colors.white,
                            ),
                            title: Text(
                              "MyGov India",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                TodayPost(width: width,heading: "Use Mask",description: "The importance of mask",imageNum: 8,),
                TodayPost(width: width,heading: "Photoshoot",description: "The importance of mask",imageNum: 9,),
                TodayPost(width: width,heading: "Cycle Today",description: "The advantages of cycling",imageNum: 2,),
                TodayPost(width: width,heading: "Use Mask",description: "The importance of mask",imageNum:4,),
                TodayPost(width: width,heading: "Yoga",description: "Refresh Today",imageNum: 7,),
                TodayPost(width: width,heading: "Cycle Today",description: "The advantages of cycling",imageNum: 10,),
                
              ])),
              BottomBar(width: width, height: height),
            ])));
  }
}
