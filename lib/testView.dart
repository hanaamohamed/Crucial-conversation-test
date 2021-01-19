import 'package:crucial_conversation_test/questionView.dart';
import 'package:crucial_conversation_test/utils/questionHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data/question.dart';

class TestView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestViewState();
  }
}

class _TestViewState extends State<TestView> {
  int _questionIndex = 0;
  List<Question> questions = QuestionHelper.questions;

  _answerCallback() {
    if (_questionIndex >= QuestionHelper.questions.length) return;
    // todo
  }

  bool get _isThereMore => _questionIndex < questions.length - 1;

  bool get _isTherePrev => _questionIndex != 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: questions[_questionIndex].imagePath != null
                ? Image.asset(
                    questions[_questionIndex].imagePath,
                  )
                : Text(""),
          ),
        ),
        Container(
          child: QuestionView(
              question: questions[_questionIndex],
              answerCallback: _answerCallback),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text(
                  "PREV",
                ),
                color: Theme.of(context).primaryColor,
                textColor: Theme.of(context).textTheme.button.color,
                disabledColor: Colors.grey,
                onPressed: _isTherePrev
                    ? () {
                        setState(() {
                          _questionIndex--;
                        });
                      }
                    : null,
              ),
              RaisedButton(
                child: Text("NEXT"),
                color: Theme.of(context).primaryColor,
                textColor: Theme.of(context).textTheme.button.color,
                disabledColor: Colors.grey,
                onPressed: _isThereMore
                    ? () {
                        setState(() {
                          _questionIndex++;
                        });
                      }
                    : null,
              ),
            ],
          ),
        )
      ],
    );
  }
}
