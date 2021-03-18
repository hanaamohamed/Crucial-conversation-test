import 'package:crucial_conversation_test/data/answer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data/question.dart';

const String _NOPE = "False";
const String _YUP = "True";

class QuestionView extends StatefulWidget {
  final Question question;
  final Function answerCallback;

  QuestionView({
    @required this.question,
    @required this.answerCallback,
  });

  @override
  State<StatefulWidget> createState() {
    return _QuestionViewState();
  }
}

class _QuestionViewState extends State<QuestionView> {
  List<String> _availableAnswers = [_YUP, _NOPE];

  _onAnswerChanged(Answer answer) {
    setState(() {
      widget.question.answer = answer;
    });

    widget.answerCallback();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Card(
          shape: RoundedRectangleBorder(),
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  widget.question.questionTitle,
                  style: Theme.of(context).textTheme.title,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: constraints.maxHeight * 0.2,
                        width: constraints.maxWidth * .8,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (BuildContext context, int index) =>
                              Container(
                            height: constraints.maxHeight * 0.2,
                            width: constraints.maxWidth * 0.4,
                            child: RadioListTile(
                              title: Text(
                                _availableAnswers[index],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              value: index == 0 ? Answer.TRUE : Answer.FALSE,
                              groupValue: widget.question.answer,
                              onChanged: (Answer answer) {
                                _onAnswerChanged(answer);
                              },
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
