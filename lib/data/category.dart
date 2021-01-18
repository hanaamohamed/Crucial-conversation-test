import 'package:flutter/cupertino.dart';

// Main categories
const String SILENCE = "Silence";
const String VIOLENCE = "Violence";
// sub categories
const String MASKING = "Masking";
const String AVOIDING = "Avoiding";
const String WITHDRAWING = "Withdrawing";
const String CONTROLLING = "Controlling";
const String LABELING = "Labeling";
const String ATTACKING = "Attacking";
// chapters
const String START_WITH_HEART = "Start with heart";
const String LEARN_TO_LOOK = "Learn to look";
const String MAKE_IT_SAFE = "Make it safe";
const String MASTER_MY_STORIES = "Master my stories";
const String STATE_MY_PATH = "State my path";
const String EXPLORE_OTHERS = "Explore others";
const String MOVE_TO_ACTION = "Move to action";

class Category {
  final int id;
  final String title;

  Category({
    @required this.id,
    @required this.title,
  });
}
