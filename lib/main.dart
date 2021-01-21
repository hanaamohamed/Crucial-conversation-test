import 'dart:io';

import 'package:crucial_conversation_test/testView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
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
      ),
      home: Platform.isIOS
          ? CupertinoPageScaffold(
              navigationBar: appBar,
              child: _HomePage(appBar.preferredSize.height),
            )
          : Scaffold(
              appBar: appBar,
              body: _HomePage(appBar.preferredSize.height),
            ),
    );
  }
}

get _appBar => Platform.isIOS
    ? CupertinoNavigationBar(
        middle: Text("Crucial conversation test"),
      )
    : AppBar(
        title: Text("Crucial conversation test"),
      );

class _HomePage extends StatelessWidget {
  final double _appBarHeight;

  _HomePage(this._appBarHeight);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: Container(
        height:
            (mediaQuery.size.height - _appBarHeight - mediaQuery.padding.top),
        width: MediaQuery.of(context).size.width,
        child: TestView(),
      ),
    );
  }
}
