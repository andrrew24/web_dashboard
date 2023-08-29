import 'package:flutter/material.dart';
import 'package:flutterwebdashboard/helper/responsive.dart';
import 'package:flutterwebdashboard/widgets/horizintal_side_menu_item.dart';
import 'package:flutterwebdashboard/widgets/vertical_side_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({super.key, required this.itemName, required this.onTap});

  final String itemName;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomScreen(context)) {
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    } else {
      return HorizantilMenuItem(itemName: itemName, onTap: onTap);
    }
  }
}
