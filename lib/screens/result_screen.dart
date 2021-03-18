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
    Map<CategoryTypes, List<Question>> answerModel,
    double height,
  ) {
    List<Category> mainCategories = new List();
    QuestionHelper.categoriesMap.forEach((key, value) {
      if (value.isMainCategory) {
        mainCategories.add(value);
      }
    });
    return Container(
      child: ListView.builder(
          itemCount: mainCategories.length,
          itemBuilder: (ctx, index) {
            print(mainCategories[index].title);
            return Column(children: <Widget>[
              ResultMainCategoryHeader(title: mainCategories[index].title),
              getSubcategoriesQuestionsListView(
                  mainCategories[index].id, answerModel, height),
            ]);
          }),
    );
  }

  Widget getSubcategoriesQuestionsListView(CategoryTypes categoryTypes,
      Map<CategoryTypes, List<Question>> answerModel, double height) {
    var questions = answerModel[categoryTypes];
    var subcategories =
        groupBy(questions, (Question question) => question.subCategoryId);
    return Container(
      height: (height * 0.17) * subcategories.length,
      child: Column(
        children: [
          ...subcategories.keys.map((key) {
            var subcategory = QuestionHelper
                .categoriesMap[key];
            var subcategoryTitle = subcategory.title;
            var questionsPerSubcategory =
                subcategories[key];
            return ResultSuCategoryView(
              subcategoryTitle,
              questionsPerSubcategory,
            );
          }),
        ],
      ),
    );
  }
}
