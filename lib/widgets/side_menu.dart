import 'package:flutter/material.dart';
import 'package:flutterwebdashboard/constants/controllers.dart';
import 'package:flutterwebdashboard/constants/styles.dart';
import 'package:flutterwebdashboard/helper/responsive.dart';
import 'package:flutterwebdashboard/routing/routes.dart';
import 'package:flutterwebdashboard/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            SizedBox(
              width: width / 48,
            ),
          Divider(
            color: lightGrey.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map(
                  (itemName) => SideMenuItem(
                    itemName: itemName == authenticationPageRoute
                        ? "Log Out"
                        : itemName,
                    onTap: () {
                      if (itemName == authenticationPageRoute) {
                        // go to auth page
                      }

                      if (!menuController.isActive(itemName)) {
                        menuController.changeActiveItemTo(itemName);
                      }
                      if (ResponsiveWidget.isSmallScreen(context)) {
                        Get.back();
                        navigationController.navigateTo(itemName);
                        // go to item route
                      }
                    },
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
