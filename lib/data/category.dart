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

class Category {
  final int id;
  final String title;

  Category({
    @required this.id,
    @required this.title,
  });
}
