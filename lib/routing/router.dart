import 'package:flutter/material.dart';
import 'package:flutterwebdashboard/routing/routes.dart';
import 'package:flutterwebdashboard/widgets/pages/clients/clients.dart';
import 'package:flutterwebdashboard/widgets/pages/drivers/drivers.dart';
import 'package:flutterwebdashboard/widgets/pages/overview/overview.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overViewPageRoute:
      return _getPageRoute(const OverViewPage());
    case driversPageRoute:
      return _getPageRoute(const DriversPage());
    case clientsPageRoute:
      return _getPageRoute(const ClientsPage()); 
    default:
      return _getPageRoute(const OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}
