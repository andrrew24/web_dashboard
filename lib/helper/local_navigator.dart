import 'package:flutter/material.dart';
import 'package:flutterwebdashboard/constants/controllers.dart';
import 'package:flutterwebdashboard/routing/router.dart';
import 'package:flutterwebdashboard/routing/routes.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: overViewPageRoute,
  onGenerateRoute: generateRoute,
);
