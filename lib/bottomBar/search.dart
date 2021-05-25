import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(color: Colors.white38,
          width: width,
          height: height * 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: width * 0.94,
                    height: height * 0.06,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.grey[200]),
                    child: ListTile(
                        trailing: Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                          size: 30.0,
                        ),
                        leading: Icon(
                          Icons.search_rounded,
                          color: Colors.black,
                          size: 40.0,
                        ),
                        title: Text(
                          "Search for Ideas",
                          style: GoogleFonts.roboto(color: Colors.grey[600]),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Ideas for you",
                  style: GoogleFonts.roboto(
                      fontSize: 30.0, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.0,
                ),
                MainContainer(width: width, height: height),
                 Text(
                  "Popular on Pintrest",
                  style: GoogleFonts.roboto(
                      fontSize: 30.0, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.0,
                ),
                MainContainer(width: width, height: height),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MainContainer extends StatelessWidget {
  const MainContainer({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width * 0.97,
        height: height * 0.55,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SearchCard(width: width, height: height,cardTitle: "Design",imageText:"design/design1.jpg" ,),
                SearchCard(width: width, height: height,cardTitle: "Pixel Art",imageText:"search/1.jpg" ,),
                SearchCard(width: width, height: height,cardTitle: "Sketch",imageText:"search/2.jpg" ,),
                SearchCard(width: width, height: height,cardTitle: "Doodle Art",imageText:"search/3.jpg" ,)
              ],
            ),
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SearchCard(width: width, height: height,cardTitle: "Design",imageText:"design/design4.jpg" ,),
                SearchCard(width: width, height: height,cardTitle: "Pixel Art",imageText:"search/5.jpg" ,),
                SearchCard(width: width, height: height,cardTitle: "Sketch",imageText:"search/6.jpg" ,),
                SearchCard(width: width, height: height,cardTitle: "Doodle Art",imageText:"search/7.jpg" ,)
              ],
            )
          ],
        ));
  }
}

class SearchCard extends StatelessWidget {
  const SearchCard({
    Key key,
    @required this.width,
    @required this.height,
    @required this.cardTitle,
    @required this.imageText,
  }) : super(key: key);

  final double width;
  final double height;
  final String imageText;
  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width * 0.47,
        height: height * 0.13,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.4),
                    BlendMode.darken),
                fit: BoxFit.fill,
                image: AssetImage(
                  'images/$imageText',
                ))),
        child: Center(
            child: Text(
          cardTitle,
          style: GoogleFonts.roboto(
              fontSize: 25.0,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        )));
  }
}
