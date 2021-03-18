import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultMainCategoryHeader extends StatelessWidget {
  final String title;

  ResultMainCategoryHeader({this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black, width: 1.0, style: BorderStyle.solid)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title),
            ),
          ),
          Checkbox(
            tristate: false,
            value: false,
            onChanged: (bool newValue) {
              //todo
            },
          )
        ],
      ),
    );
  }
}
