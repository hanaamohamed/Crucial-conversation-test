import 'package:collection/collection.dart';
import 'package:crucial_conversation_test/data/category.dart';
import 'package:crucial_conversation_test/data/question.dart';
import 'package:crucial_conversation_test/ui/result_main_category_header.dart';
import 'package:crucial_conversation_test/ui/result_sub_category_view.dart';
import 'package:crucial_conversation_test/utils/correction_modal_genarator.dart';
import 'package:crucial_conversation_test/utils/question_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../navigator.dart';

const String QUESTION_ARG = "result_questions";
const String RESULT_MODE = "result_mode";

enum ResultScreenModes { CATEGORIES, CHAPTERS }

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments as Map<String, Object>;
    List<Question> questions = args[QUESTION_ARG];
    ResultScreenModes resultScreenModes = args[RESULT_MODE];

    var answerModel = CorrectionModalGenerator(
            questions: questions, resultScreenModes: resultScreenModes)
        .modal;
    MediaQueryData mediaQuery = MediaQuery.of(context);
    AppBar appBar = AppBar(
      title: Text(
        resultScreenModes == ResultScreenModes.CATEGORIES ? "Categories": "Chapters",
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
        child: getCategoryList(answerModel, resultScreenModes),
      ),
      floatingActionButton: (resultScreenModes == ResultScreenModes.CATEGORIES)
          ? FloatingActionButton.extended(
              onPressed: () {
                Navigator.pushNamed(context, RouterPath.RESULT, arguments: {
                  QUESTION_ARG: getChapterQuestions(questions),
                  RESULT_MODE: ResultScreenModes.CHAPTERS
                });
              },
              label: const Text('Chapters'),
              icon: const Icon(Icons.book),
            )
          : null,
    );
  }

  Widget getCategoryList(
    Map<CategoryTypes, List<Question>> answerModel,
    ResultScreenModes resultScreenMode,
  ) {
    List<Category> mainCategories = new List();
    QuestionHelper.categoriesMap.forEach((key, value) {
      if (resultScreenMode == ResultScreenModes.CATEGORIES &&
          value.isMainCategory) {
        mainCategories.add(value);
      } else if (resultScreenMode == ResultScreenModes.CHAPTERS &&
          value.isChapterCategory) {
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
                  mainCategories[index].id, answerModel),
            ]);
          }),
    );
  }

  Widget getSubcategoriesQuestionsListView(
    CategoryTypes categoryTypes,
    Map<CategoryTypes, List<Question>> answerModel,
  ) {
    var questions = answerModel[categoryTypes];
    var subcategories =
        groupBy(questions, (Question question) => question.subCategoryId);
    return Container(
      child: Column(
        children: [
          ...subcategories.keys.map((key) {
            var subcategory = QuestionHelper.categoriesMap[key];
            var subcategoryTitle = subcategory.title;
            var questionsPerSubcategory = subcategories[key];
            return ResultSuCategoryView(
              subcategoryTitle,
              questionsPerSubcategory,
            );
          }),
        ],
      ),
    );
  }

  getChapterQuestions(List<Question> questions) => questions
      .where((Question question) => QuestionHelper
          .categoriesMap[question.subCategoryId].isChapterCategory)
      .toList();
}
