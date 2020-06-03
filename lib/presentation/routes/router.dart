import 'package:auto_route/auto_route_annotations.dart';
import 'package:test_rx/presentation/pages/question/question_page.dart';
import 'package:test_rx/presentation/pages/questions/questions_page.dart';
import 'package:test_rx/presentation/pages/tags/tags_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  TagsPage tagsPage;

  QuestionsPage questionsPage;

  QuestionPage questionPage;
}
