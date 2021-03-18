import 'package:collection/collection.dart';
import 'package:crucial_conversation_test/data/category.dart';
import 'package:crucial_conversation_test/data/question.dart';
import 'package:crucial_conversation_test/screens/result_screen.dart';

class CorrectionModalGenerator {
  final List<Question> questions;
  final ResultScreenModes resultScreenModes;
  Map<CategoryTypes, List<Question>> modal;

  CorrectionModalGenerator(
      {this.questions, this.resultScreenModes = ResultScreenModes.CATEGORIES}) {
    _calculateModal();
  }

  _calculateModal() {
    modal = groupBy(questions, (Question question) {
      if (resultScreenModes == ResultScreenModes.CATEGORIES) {
        return question.mainCategoryId;
      } else if (resultScreenModes == ResultScreenModes.CHAPTERS){
        return question.subCategoryId;
      } else return null;
    });
  }
}
