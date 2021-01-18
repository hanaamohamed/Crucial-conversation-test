import 'package:crucial_conversation_test/data/answer.dart';
import 'package:flutter/foundation.dart';

class Question {
  final int id;
  final String questionTitle;
  final int mainCategoryId;
  final int subCategoryId;
  final String imagePath;
  Answer answer;

  Question({
    @required this.id,
    @required this.questionTitle,
    @required this.mainCategoryId,
    @required this.subCategoryId,
    this.answer,
    this.imagePath,
  });
}
