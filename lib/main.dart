import 'dart:io';

import 'package:crucial_conversation_test/testView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget appBar = _appBar;
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.cyan,
        accentColor: Colors.amberAccent,
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              button: TextStyle(color: Colors.white),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
        buttonTheme: ButtonThemeData(
            buttonColor: ThemeData.light().primaryColor,
            textTheme: ButtonTextTheme.accent,
            colorScheme: Theme.of(context)
                .colorScheme
                .copyWith(secondary: Colors.white)),
      ),
      home: Platform.isIOS
          ? _buildIosHome(appBar)
          : _buildAndroidHome(appBar),
    );
  }
}

Widget _buildIosHome(PreferredSizeWidget appBar) => CupertinoPageScaffold(
    navigationBar: appBar,
    child: HomePage(appBar.preferredSize.height),
  );

Widget _buildAndroidHome(PreferredSizeWidget appBar) => Scaffold(
  appBar: appBar,
  body: HomePage(appBar.preferredSize.height),
);

get _appBar => Platform.isIOS
    ? CupertinoNavigationBar(
        middle: Text("Crucial conversation test"),
      )
    : AppBar(
        title: Text("Crucial conversation test"),
      );