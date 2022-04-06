import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/ThirdPage.dart';
TextStyle financeurText = GoogleFonts.muli(color: Colors.black);
TextStyle newsTitle = GoogleFonts.josefinSans(color: CupertinoColors.black);
TextStyle paraText = GoogleFonts.newsCycle(color: Colors.black);
var DSAinfo = "DIGI-Q: Create and Manage Queues in an efficient way. No need to stand in the queue anymore. Just let the technology do the work for you while you work on things that matters the most.";
var fplAppinfo = "A Flutter application which collects data from the FPL API and goes through a bunch of basic filtering to give you the best playing 11 with formation and cost for a particular week. It also displays data of all the players currently playing in the Premier League along with their total FPL points.";
var meetMeWhereInfo='Meet Me where is an Android app which intakes coordinates of people who are planning to meet and suggests the best place to meet which will save everyones time and money according to their locations.';
var fplPredictorInfo='A Flutter application which collects data from the FPL API and goes through a bunch of basic filtering to give you the best playing 11 with formation and cost for a particular week. It also displays data of all the players currently playing in the Premier League along with their total FPL points.';
var dailyServicesInfo='This app is your one stop for community services management. You can create new public services and manage the booking, scheduling, and deleting the services within a particular community. You can even create new communities as per your need';
var algoVisualizerInfo='This is a very basic app made on Flutter. This app visualizes 3 basic sorting algorithms and 2 searching algorithms. This app was made just to practice my flutter basic skills. You can keep on adding more algorithms if you wish to contribute.';
var QuizAppInfo='Budget.ai is a mobile application that helps you manage your finances in a better way.It has features like Expenses Diary, Expense Forecast, Visualizing your past Expenses, getting Budget.ai Credit Score, etc.Our Expense Diary feature helps you to record all your daily expenses into major categories which can be visualized over time and can help in forecasting your future expenses.';
var resumeLink ='https://drive.google.com/file/d/1_nhC5A9zzUqpHJh7ghFN3dPN-L7DDQ-8/view?usp=sharing';
TextStyle y = GoogleFonts.lato(
    color: Colors.black,
    fontSize: 10,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.2,
    shadows: [
      Shadow(
          color: Colors.black,
          blurRadius: 10,
          offset: Offset(0.0, 3.0))
    ]
);
List<String>connectUrl =['https://github.com/Spyy004','https://www.linkedin.com/in/ayush-pawar-847209191/','https://twitter.com/Iyush004','https://instagram.com/iyuxsh?igshid=1ue7ggi0br2pq'];
String apploreSkills = "Skills Portrayed: Flutter, Firebase, REST API, Dart, Teamwork";
String apploreInfo = "1)Worked on a full fledged Food Delivery app which was made for a restaurant chain.\n\n2)Implemented Auth Services, Notification integration, API intergation, location tracking.\n\n3)fixed critical bugs which improved the app's performance and coded a beautiful UI.";
List<String>projectName = ["DSA(Open Source)","FPL Predictor","Meet Me Where","DailyServices Info","AlgoVisualizer","Quiz App"];
List<String>projectInfo=[ "This is an open source contribution which was done during my contributor fellowship program at DevIncept. There are 8 medium-advanced level algorithm problems with well formatted code and explanation of the code with images and videos",
"A Flutter application which collects data from the FPL API and goes through a bunch of basic filtering to give you the best playing 11 with formation and cost for a particular week. It also displays data of all the players currently playing in the Premier League along with their total FPL points.",
'Meet Me where is an Android app which intakes coordinates of people who are planning to meet and suggests the best place to meet which will save everyones time and money according to their locations.',
'This app is your one stop for community services management. You can create new public services and manage the booking, scheduling, and deleting the services within a particular community. You can even create new communities as per your need',
'This is a very basic app made on Flutter. This app visualizes 3 basic sorting algorithms and 2 searching algorithms. This app was made just to practice my flutter basic skills. You can keep on adding more algorithms if you wish to contribute.',
'My first flutter app.Learned basic layout of flutter widgets and how they work with each other. Learned to add dart packages and use it in a project. It has an timer for every question and gives you your total score at the end. The most basic app made in Flutter by me'
];
List<String>expTitle= ["Applore Tech","DevIncept","E-Cell IIITG"];
List<String>connectTitle = ["githubMobile.png","linkedinMobile.png","twitterMobile.jpg","instagramMobile.jpg"];
List<String>expInfo= [apploreInfo,devInceptinfo,ecellinfo];
List<String>expSkills = [apploreSkills,devInceptSkills,ecellSkills];
List<String>projectUrl = ['https://github.com/Learn-Write-Repeat/DSA','https://github.com/Spyy004/MeetmeWhere','https://github.com/Spyy004/fpl_predictor_','https://github.com/Spyy004/allihoop-technical-assessment','https://github.com/Spyy004/algo_visual','https://github.com/Spyy004/quiz_app'];