import 'package:crucial_conversation_test/data/answer.dart';
import 'package:crucial_conversation_test/data/question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultSuCategoryView extends StatelessWidget {
  final String title;
  final List<Question> questions;

  ResultSuCategoryView(this.title, this.questions);

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
          ...questions
              .map((question) => Row(
                    children: <Widget>[
                      Checkbox(
                        tristate: false,
                        value: question.answer == Answer.TRUE,
                        onChanged: (bool newValue) {
                          // todo
                        },
                      ),
                      Text("${question.id} (T)"),
                      Checkbox(
                        tristate: false,
                        value: question.answer == Answer.FALSE,
                        onChanged: (bool newValue) {
                          // todo
                        },
                      ),
                      Text("${question.id} (F)")
                    ],
                  ))
              .toList()
        ],
      ),
    );
  }
}
