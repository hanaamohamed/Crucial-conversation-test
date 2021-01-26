import 'dart:io';

import 'package:crucial_conversation_test/navigator.dart';
import 'package:crucial_conversation_test/testView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget appBar = _appBar(context);
    MediaQueryData mediaQuery = MediaQuery.of(context);
    Widget homeBody = SafeArea(
      child: Container(
        height: (mediaQuery.size.height -
            appBar.preferredSize.height -
            mediaQuery.padding.top),
        width: MediaQuery.of(context).size.width,
        child: TestView(),
      ),
    );
    return Platform.isIOS
        ? _buildIosHome(appBar, homeBody)
        : _buildAndroidHome(appBar, homeBody);
  }
}

Widget _buildIosHome(PreferredSizeWidget appBar, Widget homeBody) =>
    CupertinoPageScaffold(
      navigationBar: appBar,
      child: homeBody,
    );

Widget _buildAndroidHome(PreferredSizeWidget appBar, Widget homeBody) =>
    Scaffold(
      appBar: appBar,
      body: homeBody,
    );

_appBar(BuildContext context) => Platform.isIOS
    ? CupertinoNavigationBar(
        middle: Text(
          "Crucial conversation test",
        ),
        leading: GestureDetector(
          child: Icon(
            CupertinoIcons.time,
            color: Theme.of(context).primaryColor,
          ),
          onTap: () => AppNavigator.navigateTo(context, RouterPath.HISTORY),
        ),
      )
    : AppBar(
        title: Text("Crucial conversation test"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.history,
              color: Colors.white,
            ),
            onPressed: () => AppNavigator.navigateTo(context, RouterPath.HISTORY),
          )
        ],
      );
