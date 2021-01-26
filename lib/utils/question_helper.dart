import 'package:crucial_conversation_test/data/answer.dart';
import 'package:crucial_conversation_test/data/question.dart';
import 'package:crucial_conversation_test/data/category.dart';

class QuestionHelper {
  static Map<String, Category> categoriesMap = {
    SILENCE: Category(id: 1, title: SILENCE),
    VIOLENCE: Category(id: 2, title: VIOLENCE),
    WITHDRAWING: Category(id: 3, title: WITHDRAWING),
    AVOIDING: Category(id: 4, title: AVOIDING),
    MASKING: Category(id: 5, title: MASKING),
    CONTROLLING: Category(id: 6, title: CONTROLLING),
    LABELING: Category(id: 7, title: LABELING),
    ATTACKING: Category(id: 8, title: ATTACKING),
    START_WITH_HEART: Category(id: 9, title: START_WITH_HEART),
    LEARN_TO_LOOK: Category(id: 10, title: LEARN_TO_LOOK),
    MAKE_IT_SAFE: Category(id: 11, title: MAKE_IT_SAFE),
    MASTER_MY_STORIES: Category(id: 12, title: MASTER_MY_STORIES),
    STATE_MY_PATH: Category(id: 13, title: STATE_MY_PATH),
    EXPLORE_OTHERS: Category(id: 14, title: EXPLORE_OTHERS),
    MOVE_TO_ACTION: Category(id: 15, title: MOVE_TO_ACTION),
  };

  static List<Question> questions = [
    Question(
      id: 1,
      questionTitle:
          "At times I avoid situations that might bring me into contact with people I'm having problems with.",
      mainCategoryId: categoriesMap[SILENCE].id,
      subCategoryId: categoriesMap[WITHDRAWING].id,
      imagePath: "assets/images/gotta_run_q1.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 2,
      questionTitle:
          "I have to put off returning phone calls or e-mails because I simply didn't want to deal with the person who sent them.",
      mainCategoryId: categoriesMap[SILENCE].id,
      subCategoryId: categoriesMap[WITHDRAWING].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 3,
      questionTitle:
          "Sometimes when people bbring up some touchy awkward issue, I try to change the subject",
      mainCategoryId: categoriesMap[SILENCE].id,
      subCategoryId: categoriesMap[AVOIDING].id,
      imagePath: "assets/images/change_subbject_q3.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 4,
      questionTitle:
          "When it comes to dealing to awkward or stressful subjects, sometimes I hold ack rather than give my full and candid opinion.",
      mainCategoryId: categoriesMap[SILENCE].id,
      subCategoryId: categoriesMap[AVOIDING].id,
      imagePath: "assets/images/holding_back_q4.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 5,
      questionTitle:
          "Rather than tell people exactly what I think, sometimes I rely on jokes, sarcasm, or snide remarks to let them know I'm frustrated.",
      mainCategoryId: categoriesMap[SILENCE].id,
      subCategoryId: categoriesMap[MASKING].id,
      imagePath: "assets/images/saracasm_q5.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 6,
      questionTitle:
          "When I've gor something tough to bring up, sometimes I offer weak or insincere compliments to soften the blow",
      mainCategoryId: categoriesMap[SILENCE].id,
      subCategoryId: categoriesMap[MASKING].id,
      imagePath: "assets/images/inscinsere_compliment_q6.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 7,
      questionTitle:
          "In order to get my point across, I sometimes exaggerate my side of the argument.",
      mainCategoryId: categoriesMap[VIOLENCE].id,
      subCategoryId: categoriesMap[CONTROLLING].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 8,
      questionTitle:
          "Of I seem to be losing control of a conversation, I might cut people off or change the suject in order to bring it back to where I think it should be.",
      mainCategoryId: categoriesMap[VIOLENCE].id,
      subCategoryId: categoriesMap[CONTROLLING].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 9,
      questionTitle:
          "When others make points that seem stupid to me, I sometimes let them know it without holding back at all.",
      mainCategoryId: categoriesMap[VIOLENCE].id,
      subCategoryId: categoriesMap[LABELING].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 10,
      questionTitle:
          "When I'm stunned by a comment, sometimes I say things that others might take as forcefull or attckomg-comments such as \"Give me a break!\" or \"That's ridiculous\"",
      mainCategoryId: categoriesMap[VIOLENCE].id,
      subCategoryId: categoriesMap[LABELING].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 11,
      questionTitle:
          "Sometimes when things get heated, I move from arguing against others' points to saying things that might hurt them personally.",
      mainCategoryId: categoriesMap[VIOLENCE].id,
      subCategoryId: categoriesMap[ATTACKING].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 12,
      questionTitle:
          "If I get into a heated discussion, I've been known to be tough on the other person. In fact, the person might feel a bit insulted or hurt.",
      mainCategoryId: categoriesMap[VIOLENCE].id,
      subCategoryId: categoriesMap[ATTACKING].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 13,
      questionTitle:
          "When I'm discussing an important topic with others, sometimes I move from trying to make my point to trying to win the battle.",
      subCategoryId: categoriesMap[START_WITH_HEART].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 14,
      questionTitle:
          "In the middle of a tough conversation, I often get so caught up in arguments that I don't see how I'm coming across to others.",
      subCategoryId: categoriesMap[LEARN_TO_LOOK].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 15,
      questionTitle:
          "When talking gets tough and I do something hurtful, I'm quick to apologize for mistakes.",
      subCategoryId: categoriesMap[MAKE_IT_SAFE].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 16,
      questionTitle:
          "When I think about a conversation that took a bad turn, I tend to focus first on what I did that was wrong rather than focus on others' mistakes.",
      subCategoryId: categoriesMap[MASTER_MY_STORIES].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 17,
      questionTitle:
          "I'm pretty good ar persuading others by helping them undersand the reasoning behind my views.",
      subCategoryId: categoriesMap[STATE_MY_PATH].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 18,
      questionTitle:
          "I can tell very quicly when others are holding bback or feeling defensive in a conversation.",
      subCategoryId: categoriesMap[EXPLORE_OTHERS].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 19,
      questionTitle:
          "Sometimes I decide that it's bbetter not to give harsh feedback because I know that it's bound to cause real problems.",
      subCategoryId: categoriesMap[START_WITH_HEART].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 20,
      questionTitle:
          "When conversation aren't working I step back from the fray, think about what's happening, and take steps to make it better.",
      subCategoryId: categoriesMap[LEARN_TO_LOOK].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 21,
      questionTitle:
          "When others get defensive because they misundersand my, I quickly get us bback on track bby clarigying what I do and don't mean.",
      subCategoryId: categoriesMap[MAKE_IT_SAFE].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 22,
      questionTitle:
          "There are some people I'm rough on because, to bbe honest, in the moment I feel like they need or deserve what I give them.",
      subCategoryId: categoriesMap[MASTER_MY_STORIES].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 23,
      questionTitle:
          "I sometimes make absolute statements like \"The fact is...\" or \"It's obbvious that...\" to bbe sure I get my point across.",
      subCategoryId: categoriesMap[STATE_MY_PATH].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 24,
      questionTitle:
          "If others hesitate to share their views, I sincerely invite them to say what's on their mind, no matter what it is.",
      subCategoryId: categoriesMap[EXPLORE_OTHERS].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 25,
      questionTitle:
          "I sometimes feel so frustrated or put down that I come across pretty aggressively toward the other person.",
      subCategoryId: categoriesMap[START_WITH_HEART].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 26,
      questionTitle:
          "Even when things get tense, I'm good at finding out why people are upset and getting to the root cause of the problem.",
      subCategoryId: categoriesMap[LEARN_TO_LOOK].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 27,
      questionTitle:
          "When I find that I'm at cross-purposes with someone, I often keep trying to win my way rather than looking for common good.",
      subCategoryId: categoriesMap[MAKE_IT_SAFE].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 28,
      questionTitle:
          "When things fon't go well, in the heart of the moment I'm inclined to think the other person is more at fault than I am.",
      subCategoryId: categoriesMap[MASTER_MY_STORIES].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 29,
      questionTitle:
          "After I share strong opinions, I go out of my way to invite others to share their views, particularly opposing ones.",
      subCategoryId: categoriesMap[STATE_MY_PATH].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 30,
      questionTitle:
          "When others hesitate to share their views, I listen even more attentively and show more interset in their view.",
      subCategoryId: categoriesMap[EXPLORE_OTHERS].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 31,
      questionTitle:
          "I often have problems with people failing to do what we agreed to and then the burden is on me to bbring it up again.",
      subCategoryId: categoriesMap[MOVE_TO_ACTION].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 32,
      questionTitle:
          "After conversations, I have additional prolems because I have different recollections of what was discussed or agreed to.",
      subCategoryId: categoriesMap[MOVE_TO_ACTION].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 33,
      questionTitle:
          "When trying to work out prolems with others, I find we either disagree on or have violated experctations about who has the final say on some issues.",
      subCategoryId: categoriesMap[MOVE_TO_ACTION].id,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
  ];
}
