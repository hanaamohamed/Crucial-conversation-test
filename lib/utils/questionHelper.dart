import 'package:crucial_conversation_test/data/question.dart';
import 'package:crucial_conversation_test/data/category.dart';

class QuestionHelper {
  static Map<String, Category> categoriesMap = {
    SILENCE: Category(id: 1, title: SILENCE),
    VIOLENCE: Category(id: 2, title: VIOLENCE),
    WITHDRAWING: Category(id: 3, title: WITHDRAWING)
  };

  static List<Question> questions = [
    Question(
      id: 1,
      questionTitle:
          "At times I avoid situations that might bring me into contact with people I'm having problems with.",
      mainCategoryId: categoriesMap[SILENCE].id,
      subCategoryId: categoriesMap[WITHDRAWING].id,
      imagePath: "assets/images/gotta_run_q1.gif",
      answer: false,
    ),
    Question(
      id: 2,
      questionTitle:
          "I have to put off returning phone calls or e-mails because I simply didn't want to deal with the person who sent them.",
      mainCategoryId: categoriesMap[SILENCE].id,
      subCategoryId: categoriesMap[WITHDRAWING].id,
      imagePath: "assets/images/destroy_phone.gif",
      answer: false,
    ),
  ];
}
