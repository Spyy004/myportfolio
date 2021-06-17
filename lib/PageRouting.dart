import 'package:flutter/cupertino.dart';
import 'package:myportfolio/FourthPage.dart';
import 'package:myportfolio/ThirdPage.dart';

import 'FirstPage.dart';
import 'SecondPage.dart';

class RoutesName {
  static const String FIRST_PAGE = '/home';
  static const String SECOND_PAGE = '/projects';
  static const String THIRD_PAGE = '/skills';
  static const String FOURTH_PAGE = '/contact';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.FIRST_PAGE:
        return _GeneratePageRoute(
            widget: FirstPage(), routeName: settings.name);
      case RoutesName.SECOND_PAGE:
        return _GeneratePageRoute(
            widget: SecondPage(), routeName: settings.name);
      case RoutesName.THIRD_PAGE:
        return _GeneratePageRoute(
            widget: ThirdPage(), routeName: settings.name);
      case RoutesName.FOURTH_PAGE:
        return _GeneratePageRoute(
            widget: FourthPage(), routeName: settings.name);
      default:
        return _GeneratePageRoute(
            widget: FirstPage(), routeName: settings.name);
    }
  }
}
  class _GeneratePageRoute extends PageRouteBuilder {
  final Widget widget;
  final String routeName;
  _GeneratePageRoute({this.widget, this.routeName})
      : super(
  settings: RouteSettings(name: routeName),
  pageBuilder: (BuildContext context, Animation<double> animation,
  Animation<double> secondaryAnimation) {
  return widget;
  },
  transitionDuration: Duration(milliseconds: 700),
  transitionsBuilder: (BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child) {
  return SlideTransition(
  textDirection: TextDirection.ltr,
  position: Tween<Offset>(
  begin: Offset(1.0, 0.0),
  end: Offset.zero,
  ).animate(animation),
  child: child,
  );
  });
  }
