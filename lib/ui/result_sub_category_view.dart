import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultSuCategoryView extends StatelessWidget {
  final String title;
  final List<int> questionNumbers;

  ResultSuCategoryView({this.title, this.questionNumbers});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 1,
          color: Colors.black,
        ),
      ),
      margin: EdgeInsets.symmetric(
        vertical: (8.0),
      ),
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.title,
          ),
          ...questionNumbers
              .map((question) => Row(
                    children: <Widget>[
                      Checkbox(
                        tristate: false,
                        value: false,
                        onChanged: (bool newValue) {
                          // todo
                        },
                      ),
                      Text("$question (T)"),
                      Checkbox(
                        tristate: false,
                        value: false,
                        onChanged: (bool newValue) {
                          // todo
                        },
                      ),
                      Text("$question (F)")
                    ],
                  ))
              .toList()
        ],
      ),
    );
  }
}
