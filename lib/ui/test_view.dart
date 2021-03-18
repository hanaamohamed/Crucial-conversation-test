import 'package:crucial_conversation_test/navigator.dart';
import 'package:crucial_conversation_test/screens/result_screen.dart';
import 'package:crucial_conversation_test/ui/question_item.dart';
import 'package:crucial_conversation_test/utils/question_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/question.dart';
import 'crucial_button.dart';

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
    return LayoutBuilder(
      builder: (ctx, constraints) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: constraints.maxHeight * 0.35,
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
            width: constraints.maxWidth,
            height: constraints.maxHeight * 0.25,
            child: QuestionView(
              question: questions[_questionIndex],
              answerCallback: _answerCallback,
            ),
          ),
          Container(
            height: constraints.maxHeight * 0.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CrucialButtonView(
                  text: "PREV",
                  onPressed: _isTherePrev
                      ? () {
                          setState(() {
                            _questionIndex--;
                          });
                        }
                      : null,
                ),
                CrucialButtonView(
                  text: "NEXT",
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
          ),
          RaisedButton(
            child: Text("jumb to results!"),
            onPressed: () {

              Navigator.pushNamed(context, RouterPath.RESULT,
                  arguments: {QUESTION_ARG: questions},);

            },
          )
        ],
      ),
    );
  }
}
