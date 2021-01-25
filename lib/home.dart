import 'package:crucial_conversation_test/testView.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  final double _appBarHeight;

  HomePage(this._appBarHeight);

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
