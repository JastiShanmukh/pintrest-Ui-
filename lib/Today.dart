import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                                  color: index == 1 ? Colors.black : Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    topBar[index],
                                    style: GoogleFonts.roboto(
                                        fontSize: 20.0,
                                        color: index == 1
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
                    height: 20.0,
                  ),
                  Container(child: Column(
                    children: [
                      Text("23 May 2021",style: GoogleFonts.roboto(fontSize: 20.0),),
                      SizedBox(height: 8.0,),
                      Center(child: Text("Stay INspired",style: GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 30.0,letterSpacing: 1.0),))
                    ],
                  ),),
                  Container(width: width*0.78,height: height*0.7, decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.black),)
                ]
                )
              ) 
           ]
           )
           )
    );
  }
}
