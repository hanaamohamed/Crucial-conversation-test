import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrucialButtonView extends StatelessWidget {
  final String text;
  final Function onPressed;

  CrucialButtonView({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              text,
              style: TextStyle(color: Colors.black),
            ),
            onPressed: onPressed,
            color: Theme.of(context).accentColor,
            disabledColor: Colors.grey,
          )
        : RaisedButton(
            child: Text(
              text,
              style: TextStyle(
                  color: onPressed == null ? Colors.white : Colors.black),
            ),
            color: Theme.of(context).accentColor,
            disabledColor: Colors.grey,
            onPressed: onPressed,
          );
  }
}
