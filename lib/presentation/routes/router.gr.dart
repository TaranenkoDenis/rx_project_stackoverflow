// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:test_rx/presentation/pages/tags/tags_page.dart';
import 'package:test_rx/presentation/pages/questions/questions_page.dart';
import 'package:test_rx/model/data/tags/tag.dart';
import 'package:test_rx/presentation/pages/question/question_page.dart';
import 'package:test_rx/model/data/questions/question.dart';

abstract class Routes {
  static const tagsPage = '/';
  static const questionsPage = '/questions-page';
  static const questionPage = '/question-page';
  static const all = {
    tagsPage,
    questionsPage,
    questionPage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.tagsPage:
        if (hasInvalidArgs<TagsPageArguments>(args)) {
          return misTypedArgsRoute<TagsPageArguments>(args);
        }
        final typedArgs = args as TagsPageArguments ?? TagsPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              TagsPage(key: typedArgs.key).wrappedRoute(context),
          settings: settings,
        );
      case Routes.questionsPage:
        if (hasInvalidArgs<QuestionsPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<QuestionsPageArguments>(args);
        }
        final typedArgs = args as QuestionsPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => QuestionsPage(typedArgs.tag, key: typedArgs.key)
              .wrappedRoute(context),
          settings: settings,
        );
      case Routes.questionPage:
        if (hasInvalidArgs<QuestionPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<QuestionPageArguments>(args);
        }
        final typedArgs = args as QuestionPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              QuestionPage(typedArgs.question, key: typedArgs.key)
                  .wrappedRoute(context),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//TagsPage arguments holder class
class TagsPageArguments {
  final Key key;
  TagsPageArguments({this.key});
}

//QuestionsPage arguments holder class
class QuestionsPageArguments {
  final Tag tag;
  final Key key;
  QuestionsPageArguments({@required this.tag, this.key});
}

//QuestionPage arguments holder class
class QuestionPageArguments {
  final Question question;
  final Key key;
  QuestionPageArguments({@required this.question, this.key});
}
