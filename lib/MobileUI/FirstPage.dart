import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:myportfolio/SecondPage.dart';
import 'package:url_launcher/url_launcher.dart';

import '../FirstPage.dart';
import '../PageRouting.dart';
import '../variables.dart';

class FirstPageMobile extends StatefulWidget {
  const FirstPageMobile({Key key}) : super(key: key);

  @override
  _FirstPageMobileState createState() => _FirstPageMobileState();
}

class _FirstPageMobileState extends State<FirstPageMobile> {
  PageController controller= PageController();
  int currResourceCard;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var height = screenSize.height;
    var width = screenSize.width;
    return Scaffold(
      backgroundColor:Colors.white,
      drawer: CommonDrawer(controller : controller),
      appBar: AppBar(
        iconTheme: IconTheme.of(context).copyWith(color: Colors.black),
        backgroundColor:Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.only(top: height*0.02,right: width*0.03),
            child: Text(
              "Ayush Pawar",
              style: GoogleFonts.rockSalt(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      body:
          PageView(
            scrollDirection: Axis.vertical,
            controller: controller,
            children: [
              MobileViewPage1(height: height, width: width, screenSize: screenSize),
              MobileViewPage2(height:height,width:width),
              MobileViewPage3(height: height, width: width),
              MobileViewPage4(height: height, width: width, currResourceCard: currResourceCard),
            ],
          )
    );
  }
}

class MobileViewPage2 extends StatefulWidget {
  const MobileViewPage2({
    @required this.height,
    @required this.width,
    Key key}) : super(key: key);
  final double height;
  final double width;
  @override
  _MobileViewPage2State createState() => _MobileViewPage2State();
}

class _MobileViewPage2State extends State<MobileViewPage2> {
  int currResourceCard;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: widget.height*0.03,left: widget.width*0.02,right: widget.width*0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeInLeft(
            child: Padding(
              padding:  EdgeInsets.only(left: 0.04*widget.width),
              child: Text("Projects",style: Theme.of(context).textTheme.headline4.merge(newsTitle).copyWith(color: Colors.black,fontWeight: FontWeight.bold),),
            ),
          ),
          SizedBox(
            height: 0.02*widget.height,
          ),
          SlideInRight(
            child: Container(
              height: widget.height*0.7,
              child: new StaggeredGridView.countBuilder(
                physics: ScrollPhysics(),
                crossAxisCount: 4,
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding:  EdgeInsets.symmetric(vertical: 0.008*widget.height,horizontal: 0.01*widget.width),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    onTap: (){
                      setState(() {
                        currResourceCard=index;
                        showModalBottomSheet(
                            isScrollControlled: true,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30))),
                            context: context, builder: (context){
                          return Container(
                            height: 0.35*widget.height,
                            child:
                            Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: ListTile(
                                selectedTileColor: Colors.transparent,
                                tileColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                onTap: ()async{
                                  if(await canLaunch(projectUrl[index]))
                                  {
                                    launch(projectUrl[index]);
                                  }
                                  else{
                                    throw "cant launch site";
                                  }
                                },
                                title: Text(projectName[index],style: Theme.of(context).textTheme.headline4.merge(newsTitle),),
                                contentPadding: EdgeInsets.all(10),
                                subtitle: Text(projectInfo[index],style: Theme.of(context).textTheme.subtitle1.merge(paraText),),
                                trailing: Icon(Icons.search_sharp),
                              ),
                            ),
                          );
                        });
                      });
                    },
                    child: Card(
                      color: currResourceCard==index?Color(0xff7b78fe):Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      shadowColor: Colors.black,
                      elevation: 20,
                      child: new Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: currResourceCard==index?Color(0xff7b78fe):Colors.white
                          ),
                          child: new Center(
                            child: new Text(projectName[index],style: Theme.of(context).textTheme.subtitle1.merge(paraText).copyWith(color: currResourceCard==index?Colors.white:Colors.black,fontWeight: FontWeight.bold),),
                          )),
                    ),
                  ),
                ),
                staggeredTileBuilder: (int index) =>
                new StaggeredTile.count(2, index.isEven ? 2 : 1),
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 1.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MobileViewPage4 extends StatelessWidget {
  const MobileViewPage4({
    Key key,
    @required this.height,
    @required this.width,
    @required this.currResourceCard,
  }) : super(key: key);

  final double height;
  final double width;
  final int currResourceCard;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height*0.03,left: width*0.02,right: width*0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BounceInLeft(
            child: Padding(
              padding:  EdgeInsets.only(left: 0.04*width),
              child: Text("Let's Connect!",style: Theme.of(context).textTheme.headline4.merge(newsTitle).copyWith(color: Colors.black,fontWeight: FontWeight.bold),),
            ),
          ),
          SizedBox(
            height: 0.02*height,
          ),
          BounceInRight(
            child: Container(
              height: height*0.4,
              child: new StaggeredGridView.countBuilder(
                physics: ScrollPhysics(),
                crossAxisCount: 6,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding:  EdgeInsets.symmetric(vertical: 0.008*height,horizontal: 0.01*width),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    onTap: ()async{
                        if(await canLaunch(connectUrl[index]))
                        {
                          await launch(connectUrl[index],forceWebView: false);
                        }
                        else
                        {
                          throw 'Sorry could not launch url';
                        }

                    },
                    child: Card(
                      color: currResourceCard==index?Color(0xff7b78fe):Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      shadowColor: Colors.black,
                      elevation: 20,
                      child: new Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: currResourceCard==index?Color(0xff7b78fe):Colors.white
                          ),
                          child: new Center(
                            child: Image(
                              height: 50,
                              width: 50,
                              image: AssetImage(
                                connectTitle[index]
                              ),
                              fit: BoxFit.cover,
                            )
                          )),
                    ),
                  ),
                ),
                staggeredTileBuilder: (int index) =>
                new StaggeredTile.count(2, index.isEven ? 2 : 2),
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 20.0,
              ),
            ),
          ),
          FadeIn(
            child: Container(
              width: width,
              height: height*0.25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "myBitmoji2.png"
                  )
                )
              ),
            ),
          ),
          SizedBox(
            height: 0.02*height,
          ),
          Center(child: Pulse(
            duration: Duration(seconds: 2),
              infinite: false,
              child: Text("Thank You for Visiting!",style: Theme.of(context).textTheme.headline5.merge(paraText).copyWith(fontWeight: FontWeight.bold,color: Colors.black),)))
        ],
      ),
    );
  }
}

class MobileViewPage3 extends StatelessWidget {
  const MobileViewPage3({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height*0.03,left: width*0.02,right: width*0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInLeft(
            child: Padding(
              padding:  EdgeInsets.only(left: 0.04*width),
              child: ExpansionCard(
                  title: Text("Skills",style: Theme.of(context).textTheme.headline4.merge(newsTitle).copyWith(color: Colors.black,fontWeight: FontWeight.bold),),
                children: [
                            BounceInUp(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 0.3*height,
                                  width: width*0.7,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Center(
                                    child: Wrap(
                                      children: [
                                        SkillsCardMobile(
                                          title: "C",
                                          del: 0,
                                        ),
                                        SizedBox(
                                          width: 0.03*width,
                                          height: 0.03*height,
                                        ),
                                        SkillsCardMobile(
                                          title: "C++",
                                          del: 1,
                                        ),
                                        SizedBox(
                                          width: 0.03*width,
                                          height: 0.03*height,
                                        ),
                                        SkillsCardMobile(
                                          title: "Dart",
                                          del: 2,
                                        ),
                                        SizedBox(
                                          width: 0.03*width,
                                          height: 0.03*height,
                                        ),
                                        SkillsCardMobile(
                                          title: "Python",
                                          del: 3,
                                        ),
                                        SizedBox(
                                          width: 0.03*width,
                                          height: 0.03*height,
                                        ),
                                        SkillsCardMobile(
                                          title: "Firebase",
                                          del: 4,
                                        ),
                                        SizedBox(
                                          width: 0.03*width,
                                          height: 0.03*height,
                                        ),
                                        SkillsCardMobile(
                                          title: "MySQL",
                                          del: 5,
                                        ),
                                        SizedBox(
                                          width: 0.03*width,
                                          height: 0.03*height,
                                        ),
                                        SkillsCardMobile(
                                          title: "Flutter",
                                          del: 6,
                                        ),
                                        SizedBox(
                                          width: 0.03*width,
                                          height: 0.03*height,
                                        ),
                                        SkillsCardMobile(
                                          title: "Unity",
                                          del: 7,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
              ),
            ),
          ),
          SizedBox(
            height: 0.02*height,
          ),
          FadeInRight(
            child: Padding(
              padding:  EdgeInsets.only(left: 0.04*width),
              child: ExpansionCard(

                title: Text("Experiences",style: Theme.of(context).textTheme.headline4.merge(newsTitle).copyWith(color: Colors.black,fontWeight: FontWeight.bold),),
                children: [
                  ElasticInRight(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0,left: 10,right: 10),
                      child: CarouselSlider.builder(itemCount: 3, itemBuilder: (context,index,index2){
                        return Container(
                          width: 0.6*width,
                          height: 0.5*height,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)) ,
                            color: Colors.black
                          ),
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)) ,
                                        color: index==0?Colors.deepPurple:index==1?Colors.black12:Colors.white,
                                    ),
                                    width: width,
                                    height: 0.15*height,
                                    child: Center(
                                      child:  CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage(
                                          index==0?"applore.jpg":index==1?"devinceptLogo.png":"ecellLogo.png"
                                        ),
                                        backgroundColor:index==0?Color(0xff9157F8):index==1?Colors.white:Colors.white ,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 0.01*height,),
                                  Text(expTitle[index],style: Theme.of(context).textTheme.headline6.merge(newsTitle).copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 0.01*height,),
                                  Text(expInfo[index],style: Theme.of(context).textTheme.subtitle1.merge(newsTitle).copyWith(color: Colors.white),),
                                  SizedBox(height: 0.01*height,),
                                  Text(expSkills[index],style: Theme.of(context).textTheme.subtitle2.merge(newsTitle).copyWith(color: Colors.white),),
                                ],
                              ),
                            ),
                          ),
                        );
                      }, options: CarouselOptions(
                        autoPlay: true,
                        autoPlayCurve: Curves.easeIn,
                        pauseAutoPlayOnTouch: true,
                        aspectRatio: 3/2
                      ))
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MobileViewPage1 extends StatelessWidget {
  const MobileViewPage1({
    Key key,
    @required this.height,
    @required this.width,
    @required this.screenSize,
  }) : super(key: key);

  final double height;
  final double width;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height*0.03,left: width*0.02,right: width*0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BounceInDown(
            child: Container(
              height: 0.3*height,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(

                  image: AssetImage("myBitmoji.png"),
                  fit: BoxFit.fitHeight
                )
              ),
            ),
          ),
          SizedBox(
            height: 0.03*height,
          ),
          FadeInLeft(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 20,
              shadowColor: Colors.black,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(
                    top: 0.02 * screenSize.height,left: 0.03*width,right: 0.03*width),
                child: Column(
                  children: [
                    Text(
                      "AYUSH PAWAR",
                      style: GoogleFonts.josefinSans(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                        shadows: [
                          Shadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(0.0, 3.0))
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 0.02*screenSize.height,),
                    SizedBox(
                      width: 0.20*screenSize.width,
                      height: 0.03*screenSize.height,
                      child: AnimatedTextKit(animatedTexts: [
                        RotateAnimatedText('Student',textStyle: y),
                        RotateAnimatedText('Developer',textStyle: y),
                        RotateAnimatedText('Athlete',textStyle: y),
                      ]),
                    ),
                    SizedBox(height: 0.02*screenSize.height,),
                    Text(myInfo,
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                        wordSpacing: 1.2,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 0.03*screenSize.height,),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 0.03*screenSize.height,),
          BounceInUp(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 0.045*height,
                    width: 0.25 * width,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: ()async {
                          if(await canLaunch(resumeLink))
                          {
                            launch(resumeLink);
                          }
                          else
                          {
                            throw "Sorry cannot load url";
                          }
                        },
                        child: Text(
                          "My Resume",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2.copyWith(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
             /*     Container(
                    height: 0.045*height,
                    width: 0.25 * width,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () {

                        },
                        child: Text(
                          "Contact",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2.copyWith(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),*/
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SkillsCardMobile extends StatelessWidget {
  const SkillsCardMobile({
    this.title,
    this.del,
    Key key,
  }) : super(key: key);
 final String title;
 final int del;
  @override
  Widget build(BuildContext context) {
    return Dance(
        infinite: true,
        delay: Duration(seconds: del+1),
        child: Text(title,style: Theme.of(context).textTheme.headline4.merge(paraText).copyWith(fontWeight: FontWeight.bold),));
  }
}

// ignore: must_be_immutable
class CommonDrawer extends StatelessWidget {
   CommonDrawer({
    Key key,
    this.controller
  }) : super(key: key);
PageController controller;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            ListTile(
              onTap: (){
                Navigator.pop(context);
                controller.animateToPage(0, duration: Duration(seconds: 1), curve: Curves.ease);
              },
              title: Text("About Me",style: Theme.of(context).textTheme.headline6.merge(paraText),),
              trailing: Icon(Icons.person,color: Colors.black,),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
                controller.animateToPage(1, duration: Duration(seconds: 1), curve: Curves.ease);
              },
              title: Text("Projects",style: Theme.of(context).textTheme.headline6.merge(paraText)),
              trailing: Icon(Icons.code,color: Colors.black,),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
                controller.animateToPage(2, duration: Duration(seconds: 1), curve: Curves.ease);
              },
              title: Text("Experience",style: Theme.of(context).textTheme.headline6.merge(paraText)),
              trailing: Icon(Icons.work,color: Colors.black,),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
                controller.animateToPage(3, duration: Duration(seconds: 1), curve: Curves.ease);
              },
              title: Text("Let's Connect",style: Theme.of(context).textTheme.headline6.merge(paraText)),
              trailing: Icon(Icons.add,color: Colors.black,),
            ),
          ],
        ),
      ),
    );
  }
}
