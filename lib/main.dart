import 'package:crucial_conversation_test/testView.dart';
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
    AppBar appBar = AppBar(
      title: Text("Crucial conversation test"),
    );
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
      home: Scaffold(
          appBar: appBar, body: _HomePage(appBar.preferredSize.height)),
    );
  }
}

class _HomePage extends StatelessWidget {
  final double _appBarHeight;

  _HomePage(this._appBarHeight);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
        height: (mediaQuery.size.height -
            _appBarHeight -
            mediaQuery.padding.top),
        width: MediaQuery.of(context).size.width,
        child: TestView());
  }
}
