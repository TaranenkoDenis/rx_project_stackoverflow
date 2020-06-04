import 'dart:async';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:built_collection/built_collection.dart';
import 'package:injectable/injectable.dart';
import 'package:rx_command/rx_command.dart';
import 'package:rxdart/rxdart.dart';
import 'package:test_rx/model/data/tags/tag.dart';
import 'package:test_rx/model/network/tags_api.dart';
import 'package:test_rx/presentation/common/i_base_view_model.dart';
import 'package:test_rx/presentation/routes/router.gr.dart';

@Injectable(as: TagsViewModel)
class TagsViewModelImpl implements TagsViewModel {
  @override
  final RxCommand<int, BuiltList<Tag>> loadTags;

  @override
  Stream<Tag> randomTag;

  final CompositeSubscription _subscription = CompositeSubscription();

  factory TagsViewModelImpl(TagsApi tagsApi) {
    final loadTags = RxCommand.createAsync(
      (int page) => tagsApi.loadTags(1),
    );

    return TagsViewModelImpl._(loadTags);
  }

  TagsViewModelImpl._(this.loadTags) {
    _subscription.add(loadTags.listen(_startEmittingRandomTag));
    loadTags();
  }

  void _startEmittingRandomTag(BuiltList<Tag> tags) {
    final random = Random();
    randomTag = Stream<Tag>.periodic(
      const Duration(seconds: 3),
      (_) => tags[random.nextInt(tags.length)],
    ).asBroadcastStream();
  }

  @override
  void dispose() {
    loadTags.dispose();
    _subscription.dispose();
  }

  @override
  void tapOnTag(Tag tag) {
    ExtendedNavigator.rootNavigator.pushNamed(
      Routes.questionsPage,
      arguments: QuestionsPageArguments(tag: tag),
    );
  }
}

abstract class TagsViewModel extends BaseViewModel {
  RxCommand<int, BuiltList<Tag>> get loadTags;

  Stream<Tag> get randomTag;

  void tapOnTag(Tag tag);
}
