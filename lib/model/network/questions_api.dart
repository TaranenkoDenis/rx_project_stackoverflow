import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:test_rx/model/data/questions/answers.dart';
import 'package:test_rx/model/data/questions/question.dart';
import 'package:test_rx/model/data/questions/question_answers_response.dart';
import 'package:test_rx/model/data/questions/questions_list_response.dart';

@Singleton(as: QuestionsApi)
class QuestionsApiImpl implements QuestionsApi {
  final Dio _dio;

  QuestionsApiImpl(this._dio);

  @override
  Future<BuiltList<Question>> loadQuestions(
    String tag, {
    int page = 1,
    int pageSize = 10,
    String order = 'desc',
    String sort = 'votes',
    String site = 'stackoverflow',
  }) async {
    final response = await _dio.get('/2.2/questions', queryParameters: {
      'site': site,
      'tagged': tag,
      'sort': sort,
      'order': order,
      'pagesize': pageSize,
      'page': page,
    });
    return QuestionsListResponse.fromJson(response.data.toString()).items;
  }

  @override
  Future<BuiltList<Answer>> loadShortInfoAboutAnswers(
    int idOfQuestion, {
    int page = 1,
    int pageSize = 10,
    String order = 'desc',
    String sort = 'creation',
    String site = 'stackoverflow',
  }) async {
    final response = await _dio
        .get('/2.2/questions/$idOfQuestion/answers', queryParameters: {
      'site': site,
      'sort': sort,
      'order': order,
      'pagesize': pageSize,
      'page': page,
    });
    return QuestionAnswersResponse.fromJson(response.data.toString()).items;
  }
}

abstract class QuestionsApi {
  Future<BuiltList<Question>> loadQuestions(
    String tag, {
    int page,
    int pageSize = 10,
    String order = 'desc',
    String sort = 'votes',
    String site = 'stackoverflow',
  });

  Future<BuiltList<Answer>> loadShortInfoAboutAnswers(
    int idOfQuestion, {
    int page = 1,
    int pageSize = 10,
    String order = 'desc',
    String sort = 'creation',
    String site = 'stackoverflow',
  });
}
