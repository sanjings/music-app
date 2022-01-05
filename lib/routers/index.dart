import 'package:flutter/material.dart';
import '../pages/Home/index.dart';

final routes = {
  '/': (context, {arguments}) => const HomePage(),
};

Route? onGenerateRoute(RouteSettings settings) {
  final String name = settings.name!;
  final Function routeBuilder = routes[name]!;
  if (routeBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              routeBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => routeBuilder(context));
      return route;
    }
  }
}
