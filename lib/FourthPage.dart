import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:hovering/hovering.dart';
import 'package:myportfolio/PageRouting.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize= MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff5114A6),
      appBar:AppBar(
        backgroundColor: Color(0xff5114A6),
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("AYUSH PAWAR",style: GoogleFonts.rockSalt(color: Colors.white,fontWeight: FontWeight.bold,),),
        ),
        leadingWidth: 10*screenSize.width,
        actions: [
          Row(
            children: [
              HoverButton(
                child: Text('Home',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                color:  Color(0xff5114A6),
                elevation: 0,
                hoverColor: Color(0xff511496),
                hoverTextColor: Colors.white,
                onpressed: (){
                  Navigator.pushNamed(context, RoutesName.FIRST_PAGE);
                },
              ),

              HoverButton(
                child: Text('Projects',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                color:  Color(0xff5114A6),
                elevation: 0,
                hoverColor: Color(0xff511496),
                hoverTextColor: Colors.white,
                onpressed: (){
                  Navigator.pushNamed(context, RoutesName.SECOND_PAGE);
                },
              ),

              HoverButton(
                child: Text('Skills',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                color:  Color(0xff5114A6),
                elevation: 0,
                hoverColor: Color(0xff511496),
                hoverTextColor: Colors.white,
                onpressed: (){
                  Navigator.pushNamed(context, RoutesName.THIRD_PAGE);
                },
              ),

              HoverButton(
                child: Text('Connect',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                color:  Color(0xff5114A6),
                elevation: 0,
                hoverColor: Color(0xff511496),
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
                children:[
                  FourthPageFirstChild(),
                  FourthPageSecondChild(),
                ]
            )




      /*PageView(
        scrollDirection: Axis.vertical,
        children:[
          FourthPageFirstChild(),
          FourthPageSecondChild(),
        ]
      )*/

    );
  }
}


class FourthPageFirstChild extends StatelessWidget {
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
          Container(
            child: Text("Let's Connect",style: GoogleFonts.shadowsIntoLight(fontSize: 0.06*screenSize.width,color: Color(0xffFBE00E),shadows:[
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
          Icon(Icons.keyboard_arrow_down,size: 0.02*screenSize.width,color: Color(0xffFBE00E)),
        ],
      ),
    );
  }
}
class FourthPageSecondChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    Object robot = Object(fileName: 'assets/model.obj');
    return Center(
      child: Container(
        child: Padding(
          padding:  EdgeInsets.only(top: 0.20*screenSize.height),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HoverButton(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical:0.025*screenSize.height,horizontal:0.025*screenSize.width ),
                      child: Image.asset(
                        'assets/LinkedinLogo.png',
                        height: 0.15*screenSize.height,
                        width: 0.15*screenSize.width,
                      ),
                    ),
                    onpressed: ()async{
                      if(await canLaunch('https://www.linkedin.com/in/ayush-pawar-847209191/'))
                        {
                          await launch('https://www.linkedin.com/in/ayush-pawar-847209191/',forceWebView: false);
                        }
                      else
                        {
                          throw 'Sorry could not launch url';
                        }
                    },
                    hoverColor: Colors.blue[900],
                    hoverShape: CircleBorder(),
                    shape: CircleBorder(),
                  ),
                  HoverButton(
                    hoverColor: Color(0xff924DC8),
                    hoverShape: CircleBorder(),
                    shape: CircleBorder(),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical:0.025*screenSize.height,horizontal:0.025*screenSize.width),
                      child: Image.asset(
                        'assets/instaLogo.png',
                        height: 0.15*screenSize.height,
                        width: 0.15*screenSize.width,
                      ),
                    ),
                    onpressed: ()async{
                      if(await canLaunch('https://instagram.com/iyuxsh?igshid=1ue7ggi0br2pq'))
                        {
                          launch('https://instagram.com/iyuxsh?igshid=1ue7ggi0br2pq',forceWebView: false);
                        }
                      else{
                        throw 'Sorry could not launch url';
                      }
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 0.05* screenSize.height,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    color: Color(0xff5114A6),
                    shadowColor: Color(0xff511496),
                    elevation: 15,
                    shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
      ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText('cswithiyush.hashnode.dev',
                          speed: Duration(milliseconds: 100),
                          textStyle: GoogleFonts.lato(color:Color(0xffFBE00E),fontSize: 28,shadows: [ Shadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(0.0, 3.0))]),

                        )
                      ],
                    )
                  ),
                ],
              ),
              SizedBox(
                height: 0.05* screenSize.height,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HoverButton(
                    child: Image.asset(
                        'assets/githubLogo.png',
                        height: 0.19*screenSize.height,
                        width: 0.19*screenSize.width,
                      ),
                    hoverColor: Colors.white,
                    onpressed: ()async{

                      if(await canLaunch('https://github.com/Spyy004'))
                      {
                        await launch('https://github.com/Spyy004');
                      }
                      else
                      {
                        throw 'Sorry could not launch url';
                      }
                    },
                    hoverShape: CircleBorder(),
                    shape: CircleBorder(),
                  ),
                  HoverButton(
                    child: Image.asset(
                      'assets/twitterLogo.png',
                      height: 0.19*screenSize.height,
                      width: 0.19*screenSize.width,
                    ),
                    onpressed: ()async{

                      if(await canLaunch('https://twitter.com/Iyush004'))
                      {
                        await launch('https://twitter.com/Iyush004',forceWebView: false);
                      }
                      else
                      {
                        throw 'Sorry could not launch url';
                      }
                    },
                    hoverColor: Colors.blueAccent,
                    hoverShape: CircleBorder(),
                    shape: CircleBorder(),
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

/*Text(
' i.yush.004@gmail.com',
style: GoogleFonts.lato(color:Color(0xffFBE00E),fontSize: 28,shadows: [ Shadow(
color: Colors.black,
blurRadius: 10,
offset: Offset(0.0, 3.0))] ),
),*/