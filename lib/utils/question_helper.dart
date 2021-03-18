import 'package:crucial_conversation_test/data/answer.dart';
import 'package:crucial_conversation_test/data/question.dart';
import 'package:crucial_conversation_test/data/category.dart';

class QuestionHelper {
  static Map<CategoryTypes, Category> categoriesMap = {
    CategoryTypes.SILENCE_CAT: Category(
      id: CategoryTypes.SILENCE_CAT,
      title: SILENCE,
      isMainCategory: true,
    ),
    CategoryTypes.VIOLENCE_CAT: Category(
      id: CategoryTypes.VIOLENCE_CAT,
      title: VIOLENCE,
      isMainCategory: true,
    ),
    CategoryTypes.WITHDRAWING_CAT: Category(
      id: CategoryTypes.WITHDRAWING_CAT,
      title: WITHDRAWING,
    ),
    CategoryTypes.AVOIDING_CAT: Category(
      id: CategoryTypes.AVOIDING_CAT,
      title: AVOIDING,
    ),
    CategoryTypes.MASKING_CAT: Category(
      id: CategoryTypes.MASKING_CAT,
      title: MASKING,
    ),
    CategoryTypes.CONTROLLING_CAT: Category(
      id: CategoryTypes.CONTROLLING_CAT,
      title: CONTROLLING,
    ),
    CategoryTypes.LABELING_CAT: Category(
      id: CategoryTypes.LABELING_CAT,
      title: LABELING,
    ),
    CategoryTypes.ATTACKING_CAT: Category(
      id: CategoryTypes.ATTACKING_CAT,
      title: ATTACKING,
    ),
    CategoryTypes.START_WITH_HEART_CHA: Category(
      id: CategoryTypes.START_WITH_HEART_CHA,
      title: START_WITH_HEART,
      isChapterCategory: true,
    ),
    CategoryTypes.LEARN_TO_LOOk_CHA: Category(
      id: CategoryTypes.LEARN_TO_LOOk_CHA,
      title: LEARN_TO_LOOK,
      isChapterCategory: true,
    ),
    CategoryTypes.MAKE_IT_SAFE_CHA: Category(
      id: CategoryTypes.MAKE_IT_SAFE_CHA,
      title: MAKE_IT_SAFE,
      isChapterCategory: true,
    ),
    CategoryTypes.MASTER_MY_STORIES_CHA: Category(
      id: CategoryTypes.MASTER_MY_STORIES_CHA,
      title: MASTER_MY_STORIES,
      isChapterCategory: true,
    ),
    CategoryTypes.STATE_MY_PATH_CHA: Category(
      id: CategoryTypes.STATE_MY_PATH_CHA,
      title: STATE_MY_PATH,
      isChapterCategory: true,
    ),
    CategoryTypes.EXPLORE_OTHERS_CHA: Category(
      id: CategoryTypes.EXPLORE_OTHERS_CHA,
      title: EXPLORE_OTHERS,
      isChapterCategory: true,
    ),
    CategoryTypes.MOVE_TO_ACTION_CHA: Category(
      id: CategoryTypes.MOVE_TO_ACTION_CHA,
      title: MOVE_TO_ACTION,
      isChapterCategory: true,
    ),
  };

  static List<Question> questions = [
    Question(
      id: 1,
      questionTitle:
          "At times I avoid situations that might bring me into contact with people I'm having problems with.",
      mainCategoryId: CategoryTypes.SILENCE_CAT,
      subCategoryId: CategoryTypes.WITHDRAWING_CAT,
      imagePath: "assets/images/gotta_run_q1.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 2,
      questionTitle:
          "I have to put off returning phone calls or e-mails because I simply didn't want to deal with the person who sent them.",
      mainCategoryId: CategoryTypes.SILENCE_CAT,
      subCategoryId: CategoryTypes.WITHDRAWING_CAT,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 3,
      questionTitle:
          "Sometimes when people bbring up some touchy awkward issue, I try to change the subject",
      mainCategoryId: CategoryTypes.SILENCE_CAT,
      subCategoryId: CategoryTypes.AVOIDING_CAT,
      imagePath: "assets/images/change_subbject_q3.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 4,
      questionTitle:
          "When it comes to dealing to awkward or stressful subjects, sometimes I hold ack rather than give my full and candid opinion.",
      mainCategoryId: CategoryTypes.SILENCE_CAT,
      subCategoryId: CategoryTypes.AVOIDING_CAT,
      imagePath: "assets/images/holding_back_q4.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 5,
      questionTitle:
          "Rather than tell people exactly what I think, sometimes I rely on jokes, sarcasm, or snide remarks to let them know I'm frustrated.",
      mainCategoryId: CategoryTypes.SILENCE_CAT,
      subCategoryId: CategoryTypes.MASKING_CAT,
      imagePath: "assets/images/saracasm_q5.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 6,
      questionTitle:
          "When I've gor something tough to bring up, sometimes I offer weak or insincere compliments to soften the blow",
      mainCategoryId: CategoryTypes.SILENCE_CAT,
      subCategoryId: CategoryTypes.MASKING_CAT,
      imagePath: "assets/images/inscinsere_compliment_q6.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 7,
      questionTitle:
          "In order to get my point across, I sometimes exaggerate my side of the argument.",
      mainCategoryId: CategoryTypes.VIOLENCE_CAT,
      subCategoryId: CategoryTypes.CONTROLLING_CAT,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 8,
      questionTitle:
          "Of I seem to be losing control of a conversation, I might cut people off or change the suject in order to bring it back to where I think it should be.",
      mainCategoryId: CategoryTypes.VIOLENCE_CAT,
      subCategoryId: CategoryTypes.CONTROLLING_CAT,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 9,
      questionTitle:
          "When others make points that seem stupid to me, I sometimes let them know it without holding back at all.",
      mainCategoryId: CategoryTypes.VIOLENCE_CAT,
      subCategoryId: CategoryTypes.LABELING_CAT,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 10,
      questionTitle:
          "When I'm stunned by a comment, sometimes I say things that others might take as forcefull or attckomg-comments such as \"Give me a break!\" or \"That's ridiculous\"",
      mainCategoryId: CategoryTypes.VIOLENCE_CAT,
      subCategoryId: CategoryTypes.LABELING_CAT,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 11,
      questionTitle:
          "Sometimes when things get heated, I move from arguing against others' points to saying things that might hurt them personally.",
      mainCategoryId: CategoryTypes.VIOLENCE_CAT,
      subCategoryId: CategoryTypes.ATTACKING_CAT,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 12,
      questionTitle:
          "If I get into a heated discussion, I've been known to be tough on the other person. In fact, the person might feel a bit insulted or hurt.",
      mainCategoryId: CategoryTypes.VIOLENCE_CAT,
      subCategoryId: CategoryTypes.ATTACKING_CAT,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 13,
      questionTitle:
          "When I'm discussing an important topic with others, sometimes I move from trying to make my point to trying to win the battle.",
      subCategoryId: CategoryTypes.START_WITH_HEART_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 14,
      questionTitle:
          "In the middle of a tough conversation, I often get so caught up in arguments that I don't see how I'm coming across to others.",
      subCategoryId: CategoryTypes.LEARN_TO_LOOk_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 15,
      questionTitle:
          "When talking gets tough and I do something hurtful, I'm quick to apologize for mistakes.",
      subCategoryId: CategoryTypes.MAKE_IT_SAFE_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 16,
      questionTitle:
          "When I think about a conversation that took a bad turn, I tend to focus first on what I did that was wrong rather than focus on others' mistakes.",
      subCategoryId: CategoryTypes.MASTER_MY_STORIES_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 17,
      questionTitle:
          "I'm pretty good ar persuading others by helping them undersand the reasoning behind my views.",
      subCategoryId: CategoryTypes.STATE_MY_PATH_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 18,
      questionTitle:
          "I can tell very quicly when others are holding bback or feeling defensive in a conversation.",
      subCategoryId: CategoryTypes.EXPLORE_OTHERS_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 19,
      questionTitle:
          "Sometimes I decide that it's bbetter not to give harsh feedback because I know that it's bound to cause real problems.",
      subCategoryId: CategoryTypes.START_WITH_HEART_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 20,
      questionTitle:
          "When conversation aren't working I step back from the fray, think about what's happening, and take steps to make it better.",
      subCategoryId: CategoryTypes.LEARN_TO_LOOk_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 21,
      questionTitle:
          "When others get defensive because they misundersand my, I quickly get us bback on track bby clarigying what I do and don't mean.",
      subCategoryId: CategoryTypes.MAKE_IT_SAFE_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 22,
      questionTitle:
          "There are some people I'm rough on because, to bbe honest, in the moment I feel like they need or deserve what I give them.",
      subCategoryId: CategoryTypes.MASTER_MY_STORIES_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 23,
      questionTitle:
          "I sometimes make absolute statements like \"The fact is...\" or \"It's obbvious that...\" to bbe sure I get my point across.",
      subCategoryId: CategoryTypes.STATE_MY_PATH_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 24,
      questionTitle:
          "If others hesitate to share their views, I sincerely invite them to say what's on their mind, no matter what it is.",
      subCategoryId: CategoryTypes.EXPLORE_OTHERS_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 25,
      questionTitle:
          "I sometimes feel so frustrated or put down that I come across pretty aggressively toward the other person.",
      subCategoryId: CategoryTypes.START_WITH_HEART_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 26,
      questionTitle:
          "Even when things get tense, I'm good at finding out why people are upset and getting to the root cause of the problem.",
      subCategoryId: CategoryTypes.LEARN_TO_LOOk_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 27,
      questionTitle:
          "When I find that I'm at cross-purposes with someone, I often keep trying to win my way rather than looking for common good.",
      subCategoryId: CategoryTypes.MAKE_IT_SAFE_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 28,
      questionTitle:
          "When things fon't go well, in the heart of the moment I'm inclined to think the other person is more at fault than I am.",
      subCategoryId: CategoryTypes.MASTER_MY_STORIES_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 29,
      questionTitle:
          "After I share strong opinions, I go out of my way to invite others to share their views, particularly opposing ones.",
      subCategoryId: CategoryTypes.STATE_MY_PATH_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 30,
      questionTitle:
          "When others hesitate to share their views, I listen even more attentively and show more interset in their view.",
      subCategoryId: CategoryTypes.EXPLORE_OTHERS_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 31,
      questionTitle:
          "I often have problems with people failing to do what we agreed to and then the burden is on me to bbring it up again.",
      subCategoryId: CategoryTypes.MOVE_TO_ACTION_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 32,
      questionTitle:
          "After conversations, I have additional prolems because I have different recollections of what was discussed or agreed to.",
      subCategoryId: CategoryTypes.MOVE_TO_ACTION_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
    Question(
      id: 33,
      questionTitle:
          "When trying to work out prolems with others, I find we either disagree on or have violated experctations about who has the final say on some issues.",
      subCategoryId: CategoryTypes.MOVE_TO_ACTION_CHA,
      imagePath: "assets/images/destroy_phone_q2.gif",
      answer: Answer.NOT_ANSWERED,
    ),
  ];
}
