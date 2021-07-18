import 'package:flutter/material.dart';
import 'package:myportfolio/FirstPage.dart';
import 'package:myportfolio/MobileUI/FirstPage.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

import 'PageRouting.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
     // initialRoute: RoutesName.FIRST_PAGE,
      home: ResponsiveBuilder(
        builder: (context, sizing) {
          if (sizing.isDesktop) {
            return Scaffold(body: FirstPage());
          }
          if (sizing.isMobile) {
            return Scaffold
              (
              backgroundColor: Colors.white,
                body: FirstPageMobile());
          }
          return Container(
            child: Center(
              child: Text("Please visit on Mobile or Desktop"),
            ),
          );
        },
      )));
}

/*class HomePage extends StatelessWidget {
  final Widget child;
  const HomePage({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context,sizing){
        if(sizing.isDesktop)
          {
            return Scaffold(
                body:FirstPage()
            );
          }
        if(sizing.isMobile)
          {
            return CircularProgressIndicator();
          }
        return Container(
          child: Center(
            child: Text("Please visit on Mobile or Desktop"),
          ),
        );
      },

    );
  }
}*/
