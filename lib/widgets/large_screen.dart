import 'package:flutter/material.dart';
import 'package:flutterwebdashboard/helper/local_navigator.dart';
import 'package:flutterwebdashboard/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          child: SideMenu(),
        ),
        Expanded(
            flex: 5,
            child: localNavigator()),
      ],
    );
  }
}
