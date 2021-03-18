import 'dart:math';

import 'package:crucial_conversation_test/data/category.dart';
import 'package:crucial_conversation_test/data/question.dart';
import 'package:crucial_conversation_test/ui/result_main_category_header.dart';
import 'package:crucial_conversation_test/ui/result_sub_category_view.dart';
import 'package:crucial_conversation_test/utils/correction_modal_genarator.dart';
import 'package:crucial_conversation_test/utils/question_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String QUESTION_ARG = "result_questions";

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments
        as Map<String, List<Question>>;
    List<Question> questions = args[QUESTION_ARG];

    var answerModel = CorrectionModalGenerator(questions: questions).modal;
    print("data $args");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Result",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            ResultMainCategoryHeader(title: SILENCE),
            ...answerModel[QuestionHelper.categoriesMap[SILENCE].id]
                .map((questions) {
              return ResultSuCategoryView(
                  title: "MASKING", questionNumbers: [1, 2]);
            }),
          ],
        ),
      ),
    );
  }
}
