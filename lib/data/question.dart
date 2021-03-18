import 'package:crucial_conversation_test/data/answer.dart';
import 'package:crucial_conversation_test/data/category.dart';
import 'package:flutter/foundation.dart';

class Question {
  final int id;
  final String questionTitle;
  final CategoryTypes mainCategoryId;
  final CategoryTypes subCategoryId;
  final String imagePath;
  Answer answer;

  Question({
    @required this.id,
    @required this.questionTitle,
    this.mainCategoryId,
    @required this.subCategoryId,
    this.answer,
    this.imagePath,
  });
}
