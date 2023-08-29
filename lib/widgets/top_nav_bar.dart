import 'package:flutter/material.dart';
import 'package:flutterwebdashboard/constants/styles.dart';
import 'package:flutterwebdashboard/helper/responsive.dart';

AppBar topNavBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
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
              icon: const Icon(
                Icons.menu,
                color: lightGrey,
              )),
      title: const Row(
        children: [
          Text(
            "Dash",
            style: TextStyle(color: lightGrey),
          ),
        ],
      ),
      actions: [
        IconButton(
          splashRadius: .5,
          onPressed: () {},
          icon: Icon(
            Icons.settings,
            color: dark.withOpacity(.8),
          ),
        ),
        Center(
          child: Stack(
            children: [
              IconButton(
                splashRadius: .5,
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: dark.withOpacity(.8),
                ),
              ),
              Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: const EdgeInsets.all(4),
                    decoration:  BoxDecoration(
                      color: active,
                      border: Border.all(color: light,width: 1),
                      borderRadius: BorderRadius.circular(30)
                    ),
                  ))
            ],
          ),
        ),
        const VerticalDivider(
          thickness: 1.5,
          color: lightGrey,
          indent: 10,
          endIndent: 10,
        ),
        const SizedBox(
          width: 10,
        ),
        const Center(
          child: Text(
            "Andrew Wasfy",
            style: TextStyle(color: lightGrey),
          ),
        ),
        IconButton(
          splashRadius: .5,
          onPressed: () {},
          icon: const Icon(
            Icons.person,
            color: lightGrey,
          ),
        ),
      ],
    );
