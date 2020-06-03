import 'package:auto_route/auto_route.dart';
import 'package:built_collection/built_collection.dart';
import 'package:injectable/injectable.dart';
import 'package:rx_command/rx_command.dart';
import 'package:test_rx/model/data/tags/tag.dart';
import 'package:test_rx/model/network/tags_api.dart';
import 'package:test_rx/presentation/common/i_base_view_model.dart';
import 'package:test_rx/presentation/routes/router.gr.dart';

@Injectable(as: TagsViewModel)
class TagsViewModelImpl implements TagsViewModel {
  @override
  final RxCommand<int, BuiltList<Tag>> loadTags;

  factory TagsViewModelImpl(TagsApi tagsApi) {
    final loadTags = RxCommand.createAsync(
      (int page) => tagsApi.loadTags(1),
    );

    return TagsViewModelImpl._(loadTags);
  }

  TagsViewModelImpl._(this.loadTags) {
    loadTags();
  }

  @override
  void dispose() {
    loadTags.dispose();
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

  void tapOnTag(Tag tag);
}
