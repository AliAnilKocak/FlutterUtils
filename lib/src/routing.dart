import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

class Router {
  bool pop(BuildContext context) => Navigator.pop(context);

  void navigateTo(
    BuildContext context,
    Widget page, {
    bool replace = false,
  }) {
    Route<dynamic> route = MaterialPageRoute(
      builder: (context) => page,
    );
    if (route != null) {
      replace
          ? Navigator.pushReplacement(context, route)
          : Navigator.push(context, route);
    } else {
      print("Routing Error. Route is null");
    }
  }

  void navigateToWithFadeAnimation(BuildContext context, Widget page,
      {bool replace = false}) {
    replace
        ? Navigator.pushReplacement(
            context,
            new FadeRoute(builder: (context) => page),
          )
        : Navigator.push(
            context,
            new FadeRoute(builder: (context) => page),
          );
  }
}

class FadeRoute<T> extends MaterialPageRoute<T> {
  FadeRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute) return child;
    return new FadeTransition(opacity: animation, child: child);
  }
}
