import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:myportfolio/PageRouting.dart';
import 'package:responsive_builder/responsive_builder.dart';
class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize= MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0E33B2),
      appBar:AppBar(
        backgroundColor: Color(0xff0E33B2),
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("AYUSH PAWAR",style: GoogleFonts.rockSalt(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12),),
        ),
        leadingWidth: 10*screenSize.width,
        actions: [
          Row(
            children: [
              HoverButton(
                child: Text('Home',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                color:  Color(0xff0E33B2),
                elevation: 0,
                hoverColor: Color(0xff0E31B2),
                hoverTextColor: Colors.white,
                onpressed: (){
                  Navigator.pushNamed(context, RoutesName.FIRST_PAGE);
                },
              ),
              HoverButton(
                child: Text('Projects',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                color:  Color(0xff0E33B2),
                elevation: 0,
                hoverColor: Color(0xff0E31B2),
                hoverTextColor: Colors.white,
                onpressed: (){
                  Navigator.pushNamed(context, RoutesName.SECOND_PAGE);
                },
              ),
              HoverButton(
                child: Text('Skills',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                color:  Color(0xff0E33B2),
                elevation: 0,
                hoverColor: Color(0xff0E31B2),
                hoverTextColor: Colors.white,
                onpressed: (){
                  Navigator.pushNamed(context, RoutesName.THIRD_PAGE);
                },
              ),

              HoverButton(
                child: Text('Connect',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                color:  Color(0xff0E33B2),
                elevation: 0,
                hoverColor: Color(0xff0E31B2),
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
      body:
             PageView(
                scrollDirection: Axis.vertical,
                children: [
                  ThirdPageFirstChild(),
                  ThirdPageSecondChild(),
                  ThirdPageThirdChild()
                ])



      /*PageView(
          scrollDirection: Axis.vertical,
          children: [
            ThirdPageFirstChild(),
            ThirdPageSecondChild(),
            ThirdPageThirdChild()
      ]),*/
    );
  }
}
class ThirdPageFirstChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize =MediaQuery.of(context).size;
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 0.3*screenSize.height,
          ),
          BounceInDown(
            child: Container(
              child: Text("Skills & Experience",style: GoogleFonts.shadowsIntoLight(fontSize: 0.06*screenSize.width,color: Color(0xff97FECA),shadows:[
                Shadow(
                    color: Colors.black,
                    blurRadius: 10,
                    offset: Offset(0.0,3.0)
                )
              ]),
              ),
            ),
          ),
          SizedBox(
            height: 0.35*screenSize.height,
          ),
          Icon(Icons.keyboard_arrow_down,size: 0.02*screenSize.width,color: Color(0xff97FECA)),
        ],
      ),
    );
  }
}

class ThirdPageSecondChild extends StatefulWidget {
  @override
  _ThirdPageSecondChildState createState() => _ThirdPageSecondChildState();
}

class _ThirdPageSecondChildState extends State<ThirdPageSecondChild> {
  Offset _offset= Offset(0.2, 0.6);
  int x = 3, y =3;
  double z=0.5;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Transform(
            transform: Matrix4.identity()
              ..setEntry(x,y,z)
              ..rotateX( _offset.dy)
              ..rotateY( _offset.dx),
            alignment: FractionalOffset.center,
            child: Center(
              child: SlideInLeft(
                child: Card(
                  elevation: 20,
                  color: Color(0xff0E33B2),
                  shadowColor: Color(0xff0E31B2),
                  child: Container(
                    width: 0.2*screenSize.width,
                    height: 0.25*screenSize.height,
                    child:Column(
                      children: [
                       Text("Skills",style: GoogleFonts.shadowsIntoLight(fontSize: 0.03*screenSize.width,color: Color(0xff97FECA),shadows:[
                      Shadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset(0.0,3.0)
                      )
                    ]),),
                      SizedBox(
                        height: 0.03*screenSize.height,
                      ),
                      Row(
                          children: [
                            Expanded(child: SkillsText("C++, Python, Dart, MySQL, Flutter, Firebase, React-Native, Typescript, Javascript",screenSize)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
        ),
        Transform(
            transform: Matrix4.identity()
              ..setEntry(x,y,z)
              ..rotateX( _offset.dy)
              ..rotateY( _offset.dx),
            alignment: FractionalOffset.center,
            child: Center(  
              child: SlideInRight(
                child: Card(
                  elevation: 20,
                  color: Color(0xff0E33B2),
                  shadowColor: Color(0xff0E31B2),
                  child: Container(
                    width: 0.2*screenSize.width,
                    height: 0.25*screenSize.height,
                    child:Column(
                      children: [
                        Text("Achievements",style: GoogleFonts.shadowsIntoLight(fontSize: 0.02*screenSize.width,color: Color(0xff97FECA),shadows:[
                          Shadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(0.0,3.0)
                          )
                        ]),),
                        SizedBox(
                          height: 0.03*screenSize.height,
                        ),
                        Row(
                          children: [
                            Expanded(child: SkillsText("Category Winner: JP Morgan Code for Good,  Category Winner:Microsoft Best for Social Good, HackTheBronx: Overall Runner Up",screenSize)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
        ),
      ],
    );
  }

  Text SkillsText(String title, Size screenSize){

    return Text(
        title,
        style: GoogleFonts.shadowsIntoLight(
          color: Colors.white,
          fontSize: 0.00986*screenSize.width,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
          wordSpacing: 1.2,
    ),
      textAlign: TextAlign.center,
    );
  }
}

class ThirdPageThirdChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.only(top:0.1*screenSize.height),
      child: GridView.count(
        crossAxisSpacing: 0.01*screenSize.width,
        crossAxisCount: 3,
        addAutomaticKeepAlives: true,
        addRepaintBoundaries: true,
        //   padding: EdgeInsets.only(top: 0.15*screenSize.height,left: 0.02*screenSize.width) ,
        mainAxisSpacing: 0.01*screenSize.height,
        children: [
          SlideInLeft(child: ExperienceCard(screenSize,Colors.blueAccent,'assets/legato.png', 'SDE Intern',legatoinfo,devInceptSkills)),
          SlideInDown(child: ExperienceCard(screenSize,Colors.blueAccent,'assets/applore.jpg','SDE Intern',apploreinfo,ecellSkills)),
          SlideInRight(child: ExperienceCard(screenSize,Colors.blueAccent,'assets/edfora.jpg','SDE Intern',edforainfo,indianWireSkills)),
        ],
      ),
    );
  }

  Card ExperienceCard(Size screenSize, Color headerColor, String imageUrl, String title, String jobInfo, String jobSkills){
    return Card(
      color: Color(0xff0E33B2),
      shadowColor: Color(0xff0E31B2),
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
              child: Center(
                child: Padding(
                  padding:  EdgeInsets.only(top: 0.2*screenSize.height,left: 0.02*screenSize.width,right: 0.02*screenSize.width),
                  child: Column(
                    children: [
                      Expanded(
                        child: Text(title,style: GoogleFonts.lato(fontSize: 0.019*screenSize.width,color: Color(0xff97FECA),shadows:[
                          Shadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(0.0,3.0)
                          )
                        ]),),
                      ),
                     Expanded(
                       child: Row(
                         children: [
                           Expanded(child:
                           Text(
                             jobInfo,
                             style: GoogleFonts.lato(
                         color: Colors.white,
                         fontSize: 0.00936*screenSize.width,
                         fontWeight: FontWeight.bold,
                         letterSpacing: 1.2,
                         wordSpacing: 1.2,
                       ),
                           )),
                         ],
                       ),
                     ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child:
                            Text(
                              jobSkills,
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 0.00986*screenSize.width,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.2,
                                wordSpacing: 1.2,
                              ),
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
          ),
          Container(
            height: 0.15*screenSize.height,
            color:headerColor,
          ),
          Positioned(
            top: 0.095*screenSize.height,
            left: 0.085*screenSize.width,
            width: 0.15*screenSize.width,
            height: 0.1*screenSize.height,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Image.asset(imageUrl,height: 0.9*screenSize.height,width: 0.9*screenSize.width,),
            ),
          ),
        ],
      ),
    );
  }
}

String legatoinfo ='1)Design and build a Rule Engine to verify the payload for various health APIs in real-time.\n\n2)Helped the organization to shift to an in-house Rule Engine reducing expenses by 10 percent.';
String devInceptSkills='Skills Portrayed: C++, Algorithms & Data Structures, Git, Python, Sanic API';
String apploreinfo= '1) Worked on building a full-fledged food delivery app for a Dubai based restaurant chain.\n\n2) Implement key functionalities like payment integration, User verification & authentication, Auth services, Real time chat, and cart management.\n\n3) Coded a sleek and clean web dashboard UI with authentication services, and bluetooth & ardurino integration with Flutter';
String ecellSkills= 'Skills Portrayed: Flutter, Dart, Firebase, Data Structures, Algorithms';
String edforainfo = '1) Work on improving the Glorifire mobile app performance.\n\n2)Brainstorm new ideas and implement them';
String indianWireSkills= 'Skills Portrayed: React-Native, Data Structures, Algorithms, Javascript, Typescript';