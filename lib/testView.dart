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
  }

  bool _isThereMore() {
    return _questionIndex < questions.length - 1;
  }

  bool _isTherePrev() {
    return _questionIndex != 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          child: questions[_questionIndex].imagePath != null
              ? Image.asset(questions[_questionIndex].imagePath,)
              : Text(""),
        ),
        QuestionView(
            question: questions[_questionIndex],
            answerCallback: _answerCallback),
        Container(
          margin: EdgeInsets.only(top: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text(
                  "PREV",
                  style: TextStyle(color: Colors.white),
                ),
                color: Theme.of(context).primaryColor,
                disabledColor: Colors.grey,
                onPressed: _isTherePrev()
                    ? () {
                        setState(() {
                          _questionIndex--;
                        });
                      }
                    : null,
              ),
              RaisedButton(
                child: Text(
                  "NEXT",
                  style: TextStyle(color: Colors.white),
                ),
                color: Theme.of(context).primaryColor,
                disabledColor: Colors.grey,
                onPressed: _isThereMore()
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
