import 'package:flutter/material.dart';

class Screen {
  double width;
  double height;
  Size size;
  BuildContext context;

  Screen(BuildContext context, {this.width, this.height}) {
    this.context = context;
    this.width = MediaQuery.of(context).size.width;
    this.height = MediaQuery.of(context).size.height;
    size = MediaQuery.of(context).size;
  }

  Size getScreenSize() {
    return size;
  }

  double screenHeight({double divided = 1, double reducedSize = 0.0}) {
    return (height - reducedSize) / divided;
  }

  double screenWidth({double divided = 1, double reducedSize = 0.0}) {
    return (width - reducedSize) / divided;
  }
}
