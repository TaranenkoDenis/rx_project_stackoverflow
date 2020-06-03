// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:test_rx/di/modules.dart';
import 'package:dio/dio.dart';
import 'package:test_rx/model/network/questions_api.dart';
import 'package:test_rx/presentation/pages/questions/qestions_page_view_model.dart';
import 'package:test_rx/model/data/tags/tag.dart';
import 'package:test_rx/model/network/tags_api.dart';
import 'package:test_rx/presentation/pages/tags/tags_view_model.dart';
import 'package:test_rx/presentation/pages/question/qestion_page_view_model.dart';
import 'package:test_rx/model/data/questions/question.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final dioModul = _$DioModul();
  g.registerLazySingleton<Dio>(() => dioModul.dio);
  g.registerFactoryParam<QuestionsPageViewModel, Tag, dynamic>(
      (tag, _) => QuestionsPageViewModelImpl(g<QuestionsApi>(), tag));
  g.registerFactory<TagsViewModel>(() => TagsViewModelImpl(g<TagsApi>()));
  g.registerFactoryParam<QuestionPageViewModel, Question, dynamic>(
      (question, _) => QuestionPageViewModelImpl(g<QuestionsApi>(), question));

  //Eager singletons must be registered in the right order
  g.registerSingleton<QuestionsApi>(QuestionsApiImpl(g<Dio>()));
  g.registerSingleton<TagsApi>(TagsApiImpl(g<Dio>()));
}

class _$DioModul extends DioModul {}
