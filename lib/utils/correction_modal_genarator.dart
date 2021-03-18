import 'package:collection/collection.dart';
import 'package:crucial_conversation_test/data/category.dart';
import 'package:crucial_conversation_test/data/question.dart';

class CorrectionModalGenerator {
  final List<Question> questions;
  Map<CategoryTypes, List<Question>> modal;

  CorrectionModalGenerator({this.questions}) {
    _calculateModal();
  }

  _calculateModal() {
    modal = groupBy(questions, (Question question) {
        return question.mainCategoryId;
    });
  }
}
