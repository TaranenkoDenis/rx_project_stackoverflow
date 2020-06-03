import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rx_widgets/rx_widgets.dart';
import 'package:test_rx/di/injection.dart';
import 'package:test_rx/model/data/questions/answers.dart';
import 'package:test_rx/model/data/questions/question.dart';
import 'package:test_rx/presentation/common/base_view_with_view_model.dart';
import 'package:test_rx/presentation/pages/question/qestion_page_view_model.dart';
import 'package:test_rx/presentation/pages/questions/qestions_page_view_model.dart';

class QuestionPage extends BasePage<QuestionPageViewModel> {
  final Question question;

  const QuestionPage(this.question, {Key key}) : super(key: key);

  @override
  QuestionPageViewModel getViewModelInstance() => getIt.get(param1: question);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<QuestionPageViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Answers Page'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            question.title,
            style: Theme.of(context).textTheme.headline1,
          ),
          Expanded(
            child: RxLoader(
              commandResults: viewModel.loadAnswers.results,
              dataBuilder: (_, BuiltList<Answer> questions) =>
                  _AnswersList(questions),
              placeHolderBuilder: (context) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorBuilder: (context, error) =>
                  Center(child: Text('Error: $error')),
            ),
          )
        ],
      ),
    );
  }
}

class _AnswersList extends StatelessWidget {
  final BuiltList<Answer> answers;

  const _AnswersList(this.answers, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemBuilder: (ctx, i) => Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Owner: ${answers[i].owner.displayName}'),
              const SizedBox(height: 8),
              Text('Creation date: ${answers[i].creationDate}'),
            ],
          ),
        ),
        separatorBuilder: (_, __) => Container(
          height: 1,
          color: Colors.black.withOpacity(0.7),
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
        itemCount: answers.length,
      );
}
