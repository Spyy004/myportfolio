import 'dart:html';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:myportfolio/variables.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'PageRouting.dart';
var myInfo = "A Creator by Heart and a Developer by Mind. I am currently pursuing B.Tech in CSE in IIIT Guwahati. Leader, problem-solver, team-player, hard-worker are some of my key traits. I love to bring my thoughts into reality by developing mobile and web apps in Flutter. Keeping aside my geeky side, I love to play Football and Cricket. I am also a binge-watcher when it comes to finishing a series just to avoid some spoilers.";

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar:
        AppBar(
        backgroundColor: Color(0xffFA613F),
        leading: Padding(
          padding:  EdgeInsets.only(top:15.0,left: 15),
          child: Text(
            "AYUSH PAWAR",
            style: GoogleFonts.rockSalt(
                color: Colors.white,
                fontWeight: FontWeight.bold,
               ),
          ),
        ),
        leadingWidth: 10 * screenSize.width,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HoverButton(
                child: Text(
                  'Home',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                color: Color(0xffFA613F),
                elevation: 0,
                hoverColor: Color(0xffFA611F),
                hoverTextColor: Colors.white,
                onpressed: () {
                  Navigator.pushNamed(context, RoutesName.FIRST_PAGE);
                },
              ),
              HoverButton(
                child: Text(
                  'Projects',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                color: Color(0xffFA613F),
                elevation: 0,
                hoverColor: Color(0xffFA611F),
                hoverTextColor: Colors.white,
                onpressed: () {
                  Navigator.pushNamed(context, RoutesName.SECOND_PAGE);
                },
              ),

              HoverButton(
                child: Text(
                  'Skills',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                color: Color(0xffFA613F),
                elevation: 0,
                hoverColor: Color(0xffFA611F),
                hoverTextColor: Colors.white,
                onpressed: () {
                  Navigator.pushNamed(context, RoutesName.THIRD_PAGE);
                },
              ),

              HoverButton(
                child: Text(
                  'Connect',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                color: Color(0xffFA613F),
                elevation: 0,
                hoverColor: Color(0xffFA611F),
                hoverTextColor: Colors.white,
                onpressed: () {
                  Navigator.pushNamed(context, RoutesName.FOURTH_PAGE);
                },
              ),
            ],
          ),
        ],
        elevation: 0,
      ),
      backgroundColor: Color(0xffFA613F),
      body:ResponsiveBuilder(
        builder: (context,sizing)
        {
          if(sizing.isDesktop)
            {
              return PageView(
                  scrollDirection: Axis.vertical,
                  controller: pageController,
                  children: [SectionOneFirstPage(), SectionTwoFirstPage()]);
            }
          if(sizing.isTablet)
            {
              return PageView(
                  scrollDirection: Axis.vertical,
                  controller: pageController,
                  children: [SectionOneFirstPage(), SectionTwoFirstPage()]);
            }

            return  PageView(
                  scrollDirection: Axis.vertical,
                  controller: pageController,
                  children: [SectionOneFirstPage(), SectionTwoFirstPageMobile()]);

        },
      )
    );
  }
}

class SectionOneFirstPage extends StatelessWidget {
  const SectionOneFirstPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    Object robot = Object(fileName: 'assets/model.obj');
    return Column(
      children: [
        FirstChildSectionOne(),
      ],
    );
  }
}

class FirstChildSectionOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    Object robot = Object(fileName: 'assets/model.obj');
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 0.3 * screenSize.height,
          ),
          Container(
            child: Text(
              "ABOUT ME",
              style: GoogleFonts.shadowsIntoLight(
                  fontSize: 0.06 * screenSize.width,
                  color: Color(0xffFFF55A),
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(0.0, 3.0))
                  ]),
            ),
          ),

          SizedBox(
            height: 0.35 * screenSize.height,
          ),
          Icon(Icons.keyboard_arrow_down,
              size: 0.02 * screenSize.width, color: Color(0xffFFF55A)),
        ],
      ),
    );
  }
}

class SectionTwoFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [BottomChild(), MiddleChild(), TopChild()],
    );
  }
}

class BottomChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MiddleChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Positioned(
      top: 0.10 * screenSize.height,
      bottom: 0.15 * screenSize.height,
      left: 0.15 * screenSize.width,
      right: 0.2 * screenSize.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 10,
        shadowColor: Color(0xfffa611f),
        color: Color(0xffFA613F),
        child: Padding(
          padding: EdgeInsets.only(
              left: 0.35 * screenSize.width, top: 0.10 * screenSize.height),
          child: Column(
            children: [
              Text(
                "AYUSH PAWAR",
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    shadows: [
                      Shadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset(0.0, 3.0))
                    ],
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid,
                    decorationColor: Color(0xffFFF55A)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 0.02*screenSize.height,),
              SizedBox(
                width: 0.1*screenSize.width,
                height: 0.09*screenSize.height,
                child: AnimatedTextKit(animatedTexts: [
                  RotateAnimatedText('Student',textStyle: y),
                  RotateAnimatedText('Developer',textStyle: y),
                  RotateAnimatedText('Athlete',textStyle: y),
                ]),
              ),
              SizedBox(height: 0.02*screenSize.height,),
              Text(myInfo,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 0.00986*screenSize.width,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  wordSpacing: 1.2,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 0.05*screenSize.height,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HoverButton(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'My Resume',
                        style: TextStyle(
                             color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),
                    color: Color(0xffFA613F),
                    elevation: 0,
                    hoverColor: Color(0xffFA611F),
                    hoverTextColor: Colors.white,
                    onpressed: ()async {
                     if(await canLaunch(resumeLink))
                       {
                         launch(resumeLink);
                       }
                     else
                       {
                         throw "Sorry cannot load url";
                       }
                    },
                  ),
                  HoverButton(
                    child: Padding(
                      padding: const EdgeInsets.only(right:10.0),
                      child: Text(
                        "Contact",
                        style: TextStyle(
                             color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),
                    color: Color(0xffFA613F),
                    elevation: 0,
                    hoverColor: Color(0xffFA611F),
                    hoverTextColor: Colors.white,
                    onpressed: () {
                      Navigator.pushNamed(context, RoutesName.FOURTH_PAGE);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TopChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Positioned(
      top: 0.3 * screenSize.height,
      bottom: 0.05 * screenSize.height,
      left: 0.18 * screenSize.width,
      right: 0.55 * screenSize.width,
      child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 20,
          child: Image.asset(
            'assets/MyImage2.jpg',
            fit: BoxFit.cover,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          )),
    );
  }
}

class SectionTwoFirstPageMobile extends StatefulWidget {
  const SectionTwoFirstPageMobile({Key key}) : super(key: key);

  @override
  _SectionTwoFirstPageMobileState createState() => _SectionTwoFirstPageMobileState();
}

class _SectionTwoFirstPageMobileState extends State<SectionTwoFirstPageMobile> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.all(30.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 10,
        shadowColor: Color(0xfffa611f),
        color: Color(0xffFA613F),
        child: Padding(
          padding: EdgeInsets.symmetric(
               vertical: 0.06 * screenSize.height,horizontal: 0.03*screenSize.width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/MyImage.png",
                ),
                radius: 50,
                backgroundColor: Colors.deepOrangeAccent,
              ),
                SizedBox(height: 0.02*screenSize.height,),
              Text(
                "AYUSH PAWAR",
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 0.025*screenSize.width,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    shadows: [
                      Shadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset(0.0, 3.0))
                    ],
                    decorationColor: Color(0xffFFF55A)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 0.02*screenSize.height,),
              SizedBox(
                width: 0.1*screenSize.width,
                height: 0.09*screenSize.height,
                child: AnimatedTextKit(animatedTexts: [
                  RotateAnimatedText('Student',textStyle: y),
                  RotateAnimatedText('Developer',textStyle: y),
                  RotateAnimatedText('Athlete',textStyle: y),
                ]),
              ),
              SizedBox(height: 0.01*screenSize.height,),
              Text(myInfo,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 0.026*screenSize.width,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  wordSpacing: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 0.05*screenSize.height,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HoverButton(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'My Resume',
                        style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),
                    color: Color(0xffFA613F),
                    elevation: 0,
                    hoverColor: Color(0xffFA611F),
                    hoverTextColor: Colors.white,
                    onpressed: ()async {
                      if(await canLaunch(resumeLink))
                      {
                        launch(resumeLink);
                      }
                      else
                      {
                        throw "Sorry cannot load url";
                      }
                    },
                  ),
                  HoverButton(
                    child: Padding(
                      padding: const EdgeInsets.only(right:10.0),
                      child: Text(
                        "Contact",
                        style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),
                    color: Color(0xffFA613F),
                    elevation: 0,
                    hoverColor: Color(0xffFA611F),
                    hoverTextColor: Colors.white,
                    onpressed: () {
                      Navigator.pushNamed(context, RoutesName.FOURTH_PAGE);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
