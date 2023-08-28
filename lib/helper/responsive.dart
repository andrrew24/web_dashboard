import 'package:flutter/material.dart';
import 'package:flutterwebdashboard/constants/screens.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    super.key,
    required this.largeScreen,
    this.smallScreen,
    this.mediumScreen,
  });

  final Widget largeScreen;
  final Widget? smallScreen;
  final Widget? mediumScreen;

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.sizeOf(context).width  > mediumScreenSize ;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= mediumScreenSize &&
      MediaQuery.sizeOf(context).width < largeScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= largeScreenSize;

  static bool isCustomScreen(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= mediumScreenSize &&
      MediaQuery.sizeOf(context).width <= customScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double _width = constraints.maxWidth;
        if (_width >= largeScreenSize) {
          return largeScreen;
        } else if (_width < largeScreenSize && _width >= mediumScreenSize) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
