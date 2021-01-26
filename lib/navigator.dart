import 'package:crucial_conversation_test/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'history_screen.dart';

class RouterPath {
  static const String HOME = "/";
  static const String HISTORY = "/history";
}

class AppNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  AppNavigator({this.navigatorKey});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: RouterPath.HOME,
      onGenerateRoute: (routeSettings) => MaterialPageRoute(
        builder: (ctx) => _routes[routeSettings.name](context),
      ),
    );
  }

  static navigateTo(BuildContext context, String routePath) {
    Navigator.of(context).pushNamed(routePath);
  }
}

Map<String, WidgetBuilder> get _routes => {
      RouterPath.HOME: (_) => HomePage(),
      RouterPath.HISTORY: (_) => HistoryScreen(),
    };
