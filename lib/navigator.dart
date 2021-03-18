import 'package:crucial_conversation_test/screens/home_screen.dart';
import 'package:crucial_conversation_test/screens/result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/history_screen.dart';

class RouterPath {
  static const String HOME = "/";
  static const String HISTORY = "/history";
  static const String RESULT = "/result";
}

class AppNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  AppNavigator({this.navigatorKey});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: RouterPath.HOME,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (ctx) => _routes[routeSettings.name](context),
        );
      },
    );
  }

  static navigateTo(BuildContext context, String routePath,
      {Map<String, Object> argument}) {
    Navigator.of(context).pushNamed(routePath, arguments: argument);
  }
}

Map<String, WidgetBuilder> get _routes => {
      RouterPath.HOME: (_) => HomePage(),
      RouterPath.HISTORY: (_) => HistoryScreen(),
      RouterPath.RESULT: (_) => ResultScreen(),
    };
