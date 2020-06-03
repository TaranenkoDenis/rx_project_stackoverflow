import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rx_widgets/rx_widgets.dart';
import 'package:test_rx/di/injection.dart';
import 'package:test_rx/model/data/questions/question.dart';
import 'package:test_rx/model/data/tags/tag.dart';
import 'package:test_rx/presentation/common/base_view_with_view_model.dart';
import 'package:test_rx/presentation/pages/questions/qestions_page_view_model.dart';

class QuestionsPage extends BasePage<QuestionsPageViewModel> {
  final Tag tag;

  const QuestionsPage(this.tag, {Key key}) : super(key: key);

  @override
  QuestionsPageViewModel getViewModelInstance() => getIt.get(param1: tag);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<QuestionsPageViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Questions Page'),
      ),
      body: RxLoader(
        commandResults: viewModel.loadQuestions.results,
        dataBuilder: (_, BuiltList<Question> questions) => _QuestionsList(
          questions,
          onTap: viewModel.onTap,
        ),
        placeHolderBuilder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
        errorBuilder: (context, error) => Center(child: Text('Error: $error')),
      ),
    );
  }
}

class _QuestionsList extends StatelessWidget {
  final BuiltList<Question> questions;
  final Function(Question) onTap;

  const _QuestionsList(this.questions, {Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemBuilder: (ctx, i) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            if (onTap != null) {
              onTap(questions[i]);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text('${questions[i].title}'),
          ),
        ),
        separatorBuilder: (_, __) => Container(
          height: 1,
          color: Colors.black.withOpacity(0.7),
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
        itemCount: questions.length,
      );
}
