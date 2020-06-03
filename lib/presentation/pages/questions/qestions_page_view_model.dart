import 'package:auto_route/auto_route.dart';
import 'package:built_collection/built_collection.dart';
import 'package:injectable/injectable.dart';
import 'package:rx_command/rx_command.dart';
import 'package:test_rx/model/data/questions/question.dart';
import 'package:test_rx/model/data/tags/tag.dart';
import 'package:test_rx/model/network/questions_api.dart';
import 'package:test_rx/presentation/common/i_base_view_model.dart';
import 'package:test_rx/presentation/routes/router.gr.dart';

@Injectable(as: QuestionsPageViewModel)
class QuestionsPageViewModelImpl implements QuestionsPageViewModel {
  @override
  final RxCommand<int, BuiltList<Question>> loadQuestions;

  factory QuestionsPageViewModelImpl(
      QuestionsApi questionsApi, @factoryParam Tag tag) {
    final questionsLoader = RxCommand.createAsync(
      (int page) => questionsApi.loadQuestions(tag.name),
    );

    return QuestionsPageViewModelImpl._(questionsLoader);
  }

  QuestionsPageViewModelImpl._(this.loadQuestions) {
    loadQuestions();
  }

  @override
  void dispose() {
    loadQuestions.dispose();
  }

  @override
  void onTap(Question question) {
    ExtendedNavigator.rootNavigator.pushNamed(
      Routes.questionPage,
      arguments: QuestionPageArguments(question: question),
    );
  }
}

abstract class QuestionsPageViewModel extends BaseViewModel {
  RxCommand<int, BuiltList<Question>> get loadQuestions;

  void onTap(Question question);
}
