import 'dart:math';

import 'package:collection/collection.dart';
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
    MediaQueryData mediaQuery = MediaQuery.of(context);
    AppBar appBar = AppBar(
      title: const Text(
        "Result",
      ),
    );
    double height = (mediaQuery.size.height -
        appBar.preferredSize.height -
        mediaQuery.padding.top);
    return Scaffold(
      appBar: appBar,
      body: Container(
          width: mediaQuery.size.width,
          height: height,
          padding: const EdgeInsets.all(8.0),
          child: getCategoryList(answerModel, height)),
    );
  }

  Widget getCategoryList(
      Map<CategoryTypes, List<Question>> answerModel, double height) {
    var categoryKeys = QuestionHelper.categoriesMap.keys.toList();
    return Container(
      child: ListView.builder(
          itemCount: categoryKeys.length,
          itemBuilder: (ctx, index) {
            var categoryKey = categoryKeys[index];
            var categoryTitle = QuestionHelper.categoriesMap[categoryKey].title;
            print(categoryKey);
            return Column(children: <Widget>[
              ResultMainCategoryHeader(title: categoryTitle),
              getSubcategoriesQuestionsListView(
                  categoryKey, answerModel, height),
            ]);
          }),
    );
  }

  Widget getSubcategoriesQuestionsListView(CategoryTypes categoryTypes,
      Map<CategoryTypes, List<Question>> answerModel, double height) {
    var questions = answerModel[categoryTypes];
    var subcategories =
        groupBy(questions, (Question question) => question.subCategoryId);
    if (subcategories != null) {
      return Container(
        height: (height * 0.2) * subcategories.length,
        child: ListView.builder(
            itemCount: subcategories.length,
            itemBuilder: (BuildContext context, int index) {
              var subcategory = QuestionHelper
                  .categoriesMap[subcategories.keys.toList()[index]];
              var subcategoryTitle = subcategory.title;
              var questionsPerSubcategory =
                  subcategories[subcategories.keys.toList()[index]];
              return ResultSuCategoryView(
                subcategoryTitle,
                questionsPerSubcategory,
              );
            }),
      );
    } else
      return Text("NOT FOUND");
  }
}
