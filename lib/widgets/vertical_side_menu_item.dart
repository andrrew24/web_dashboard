import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../constants/controllers.dart';
import '../constants/styles.dart';

class VerticalMenuItem extends StatelessWidget {
  const VerticalMenuItem(
      {super.key, required this.itemName, required this.onTap});

  final String itemName;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
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
                    width: 3,
                    height: 72,
                    color: dark,
                  ),
                ),
                Expanded(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
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
                ))
              ],
            ),
          )),
    );
  }
}
