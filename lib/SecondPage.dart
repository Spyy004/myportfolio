import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:myportfolio/PageRouting.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'ThirdPage.dart';
import 'package:myportfolio/variables.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xffFFE833),
      appBar:AppBar(
        backgroundColor: Color(0xffFFE813),
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text("AYUSH PAWAR",style: GoogleFonts.rockSalt(color: Colors.black,fontWeight: FontWeight.bold,),),
        ),
        leadingWidth: 700,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HoverButton(
                child: Text('Home',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                color:  Color(0xffFFE833),
                elevation: 0,
                hoverColor: Color(0xffFFE813),
                hoverTextColor: Colors.white,
                onpressed: (){
                  Navigator.pushNamed(context, RoutesName.FIRST_PAGE);
                },
              ),
              HoverButton(
                child: Text('Projects',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                color:  Color(0xffFFE833),
                elevation: 0,
                hoverColor: Color(0xffFFE813),
                hoverTextColor: Colors.white,
                onpressed: (){
                  Navigator.pushNamed(context, RoutesName.SECOND_PAGE);
                },
              ),
              HoverButton(
                child: Text('Skills',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                color:  Color(0xffFFE833),
                elevation: 0,
                hoverColor: Color(0xffFFE813),
                hoverTextColor: Colors.white,
                onpressed: (){
                  Navigator.pushNamed(context, RoutesName.THIRD_PAGE);
                },
              ),
              HoverButton(
                child: Text('Connect',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                color:  Color(0xffFFE833),
                elevation: 0,
                hoverColor: Color(0xffFFE813),
                hoverTextColor: Colors.white,
                onpressed: (){
                  Navigator.pushNamed(context, RoutesName.FOURTH_PAGE);
                },
              ),
            ],
          ),
         ],
        elevation: 0,
      ),
      body: PageView(
                scrollDirection: Axis.vertical,
                children: [SecondPageFirstChild(),SecondPageSecondChild()])

    );

  }
}

class SecondPageFirstChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 0.3*screenSize.height,
            ),
            Container(
              child: Text("PROJECTS",style: GoogleFonts.shadowsIntoLight(fontSize: 0.06*screenSize.width,color: Colors.white,shadows:[
                Shadow(
                    color: Colors.black,
                    blurRadius: 10,
                    offset: Offset(0.0,3.0)
                )
              ]),
              ),
            ),
            SizedBox(
              height: 0.35*screenSize.height,
            ),
            Icon(Icons.keyboard_arrow_down,size: 0.02*screenSize.width,color: Colors.white),
          ],
        ),
      );
    ;
  }
}

class SecondPageSecondChild extends StatefulWidget {
  @override
  _SecondPageSecondChildState createState() => _SecondPageSecondChildState();
}

class _SecondPageSecondChildState extends State<SecondPageSecondChild> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    Offset _offset = Offset(0.2, 0.6);
    return Padding(
      padding:  EdgeInsets.symmetric(vertical:0.05* screenSize.height,horizontal:0.05*screenSize.width ),
      child: GridView.count(
          crossAxisCount: 4,
         crossAxisSpacing: 0.01*screenSize.width,
         addAutomaticKeepAlives: true,
         addRepaintBoundaries: true,
      //   padding: EdgeInsets.only(top: 0.15*screenSize.height,left: 0.02*screenSize.width) ,
         mainAxisSpacing: 0.01*screenSize.height,
         shrinkWrap: true,
        children: [
          ProjectCard(screenSize,'DigiQ',DSAinfo,'https://github.com/Spyy004/hackthebronxdigiqMobile'),
          Container(),
          ProjectCard(screenSize, 'MeetMeWhere', meetMeWhereInfo, 'https://github.com/Spyy004/MeetmeWhere'),
          Container(),
          Container(),
          ProjectCard(screenSize, 'FPL-Predictor', fplAppinfo, 'https://github.com/Spyy004/fpl_predictor_'),
          Container(),
          ProjectCard(screenSize, 'Daily Services', dailyServicesInfo, 'https://github.com/Spyy004/allihoop-technical-assessment'),
          ProjectCard(screenSize, 'Algo-Visualizer', algoVisualizerInfo, 'https://github.com/Spyy004/algo_visual'),
          Container(),
          ProjectCard(screenSize, 'BudgetAI', QuizAppInfo, 'https://github.com/Spyy004/budgetAI'),
        ],
      ),
    );
  }
}
 class SecondPageSecondChildMobile extends StatefulWidget {
   const SecondPageSecondChildMobile({Key key}) : super(key: key);

   @override
   _SecondPageSecondChildMobileState createState() => _SecondPageSecondChildMobileState();
 }

 class _SecondPageSecondChildMobileState extends State<SecondPageSecondChildMobile> {
   @override
   Widget build(BuildContext context) {
     var screenSize = MediaQuery.of(context).size;
     return CarouselSlider(
       options: CarouselOptions(
         initialPage: 1,
         autoPlay: true,
         aspectRatio: 3/2,
         autoPlayCurve: Curves.easeIn,
         enlargeCenterPage: true,
         scrollDirection: Axis.horizontal,
         autoPlayInterval: Duration(seconds: 4)
       ),
       items: [
         ProjectCard2(screenSize,'DigiQ',DSAinfo,'https://github.com/Spyy004/hackthebronxdigiqMobile'),
         ProjectCard2(screenSize, 'MeetMeWhere', meetMeWhereInfo, 'https://github.com/Spyy004/MeetmeWhere'),
         ProjectCard2(screenSize, 'FPL-Predictor', fplAppinfo, 'https://github.com/Spyy004/fpl_predictor_'),
         ProjectCard2(screenSize, 'Daily Services', dailyServicesInfo, 'https://github.com/Spyy004/allihoop-technical-assessment'),
         ProjectCard2(screenSize, 'Algo-Visualizer', algoVisualizerInfo, 'https://github.com/Spyy004/algo_visual'),
         ProjectCard2(screenSize, 'BudgetAI', QuizAppInfo, 'https://github.com/Spyy004/budgetAI'),
       ],
     );
   }
 }
Card ProjectCard(Size screenSize,String titleText, String detailText, String urlText) {
  return Card(
    color: Color(0xffFFE833),
    elevation: 15,
    shadowColor: Color(0xffFFE813),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Text(titleText,
            style:  GoogleFonts.lato(
              color: Colors.black,
              fontSize: 0.0250*screenSize.width,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                    color: Colors.white,
                    blurRadius: 10,
                    offset: Offset(0.0, 3.0))
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:8.0),
            child: Text(detailText,
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 0.00950*screenSize.width,
                fontWeight: FontWeight.bold,
                wordSpacing: 1.2,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        HoverButton(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("View Project",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          hoverColor: Colors.white,
          elevation: 10,
          hoverElevation: 10,
          onpressed: ()async{
            if(await canLaunch(urlText))
            {
              launch(urlText);
            }
            else{
              throw "cant launch site";
            }
          },
        )
      ],
    ),
  );
}

Card ProjectCard2(Size screenSize,String titleText, String detailText, String urlText) {
  return Card(
    color: Color(0xffFFE833),
    elevation: 15,
    shadowColor: Color(0xffFFE813),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Text(titleText,
            style:  GoogleFonts.lato(
              color: Colors.black,
              fontSize: 0.060*screenSize.width,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                    color: Colors.white,
                    blurRadius: 10,
                    offset: Offset(0.0, 3.0))
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:10.0),
            child: Text(detailText,
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 0.030*screenSize.width,
                fontWeight: FontWeight.bold,
                wordSpacing: 1.2,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        HoverButton(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("View Project",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          hoverColor: Colors.white,
          elevation: 10,
          hoverElevation: 10,
          onpressed: ()async{
            if(await canLaunch(urlText))
            {
              launch(urlText);
            }
            else{
              throw "cant launch site";
            }
          },
        )
      ],
    ),
  );
}