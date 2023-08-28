import 'package:flutter/material.dart';
import 'package:flutterwebdashboard/helper/responsive.dart';

AppBar topNavBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
      elevation: 0,
      backgroundColor: Colors.blue,
      leading: ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset("assets/icons/logo.png"),
                )
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu)),
      title: const Row(
        children: [
          Text("Dash"),
        ],
      ),
    );
