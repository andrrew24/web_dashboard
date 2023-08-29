import 'package:flutter/material.dart';
import 'package:flutterwebdashboard/constants/controllers.dart';
import 'package:flutterwebdashboard/constants/styles.dart';
import 'package:get/get.dart';

class HorizantilMenuItem extends StatelessWidget {
  const HorizantilMenuItem(
      {super.key, required this.itemName, required this.onTap});

  final String itemName;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
      child: Obx(() => Container(
            color: menuController.isHovering(itemName)
                ? lightGrey.withOpacity(.1)
                : Colors.transparent,
            child: Row(
              children: [
                Visibility(
                  visible: menuController.isHovering(itemName) ||
                      menuController.isActive(itemName),
                  maintainAnimation: true,
                  maintainSize: true,
                  maintainState: true,
                  child: Container(
                    width: 6,
                    height: 40,
                    color: dark,
                  ),
                ),
                SizedBox(
                  width: width / 80,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: menuController.returnIconFor(itemName),
                ),
                if (!menuController.isActive(itemName))
                  Flexible(
                      child: Text(
                    itemName,
                    style: TextStyle(
                        color: menuController.isHovering(itemName)
                            ? dark
                            : lightGrey),
                  ))
                else
                  Flexible(
                      child: Text(
                    itemName,
                    style: const TextStyle(
                        color: dark, fontSize: 18, fontWeight: FontWeight.bold),
                  ))
              ],
            ),
          )),
    );
  }
}
