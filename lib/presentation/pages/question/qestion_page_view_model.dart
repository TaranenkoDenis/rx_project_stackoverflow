import 'package:built_collection/built_collection.dart';
import 'package:injectable/injectable.dart';
import 'package:rx_command/rx_command.dart';
import 'package:test_rx/model/data/questions/answers.dart';
import 'package:test_rx/model/data/questions/question.dart';
import 'package:test_rx/model/network/questions_api.dart';
import 'package:test_rx/presentation/common/i_base_view_model.dart';

@Injectable(as: QuestionPageViewModel)
class QuestionPageViewModelImpl implements QuestionPageViewModel {
  @override
  final RxCommand<void, BuiltList<Answer>> loadAnswers;

  factory QuestionPageViewModelImpl(
      QuestionsApi questionsApi, @factoryParam Question question) {
    final loadAnswers = RxCommand.createAsyncNoParam(
      () => questionsApi.loadShortInfoAboutAnswers(question.questionId),
    );

    return QuestionPageViewModelImpl._(loadAnswers);
  }

  QuestionPageViewModelImpl._(this.loadAnswers) {
    loadAnswers();
  }

  @override
  void dispose() {
    loadAnswers.dispose();
  }
}

abstract class QuestionPageViewModel extends BaseViewModel {
  RxCommand<void, BuiltList<Answer>> get loadAnswers;
}
