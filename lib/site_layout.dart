import 'package:flutter/material.dart';
import 'package:flutterwebdashboard/helper/responsive.dart';
import 'package:flutterwebdashboard/widgets/large_screen.dart';
import 'package:flutterwebdashboard/widgets/small_screen.dart';
import 'package:flutterwebdashboard/widgets/top_nav_bar.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({super.key});


 final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavBar(context, scaffoldKey),
      drawer: const Drawer(),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
