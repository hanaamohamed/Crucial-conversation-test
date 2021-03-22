import 'dart:io';

import 'package:crucial_conversation_test/navigator.dart';
import 'package:crucial_conversation_test/ui/test_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Crucial_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget appBar = CrucialAppBar(
      "Crucial conversation test",
      onIconTapped: () => AppNavigator.navigateTo(context, RouterPath.HISTORY),
      icon: Icon(
        CupertinoIcons.time,
        color: Theme.of(context).primaryColor,
      ),
    );
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
