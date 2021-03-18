import 'package:crucial_conversation_test/navigator.dart';
import 'package:crucial_conversation_test/screens/result_screen.dart';
import 'package:crucial_conversation_test/utils/app_theme.dart';
import 'package:crucial_conversation_test/utils/question_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getAppTheme(context),
      home: Scaffold(
        body: AppNavigator(
          navigatorKey: navigatorKey,
        ),
      ),
    );
  }
}
