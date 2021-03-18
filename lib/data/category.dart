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

enum CategoryTypes {
  SILENCE_CAT,
  VIOLENCE_CAT,
  MASKING_CAT,
  AVOIDING_CAT,
  WITHDRAWING_CAT,
  CONTROLLING_CAT,
  LABELING_CAT,
  ATTACKING_CAT,
  START_WITH_HEART_CHA,
  LEARN_TO_LOOk_CHA,
  MAKE_IT_SAFE_CHA,
  STATE_MY_PATH_CHA,
  MASTER_MY_STORIES_CHA,
  EXPLORE_OTHERS_CHA,
  MOVE_TO_ACTION_CHA,
}

class Category {
  final CategoryTypes id;
  final String title;
  bool isMainCategory = false;

  Category({
    @required this.id,
    @required this.title,
    this.isMainCategory = false,
  });
}
