import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './data/question.dart';

const String _NOPE = "NO";
const String _YUP = "YES";

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

  _onAnswerChanged(bool answer) {
    setState(() {
      widget.question.answer = answer;
    });

    widget.answerCallback();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(),
      margin: EdgeInsets.only(left: 10, right: 10, top: 24),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Wrap(children: [
          Column(
            children: <Widget>[
              Text(
                widget.question.questionTitle,
                style: Theme.of(context).textTheme.title,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 250,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _availableAnswers.length,
                        itemBuilder: (BuildContext context, int index) =>
                            Container(
                          height: 20,
                          width: 130,
                          child: RadioListTile(
                            title: Text(_availableAnswers[index]),
                            value: _availableAnswers[index],
                            groupValue: widget.question.answer ? _YUP : _NOPE,
                            onChanged: (String answer) {
                              _onAnswerChanged(answer == _YUP);
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
        ]),
      ),
    );
  }
}
