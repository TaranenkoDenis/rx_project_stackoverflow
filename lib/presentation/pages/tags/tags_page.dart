import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rx_widgets/rx_widgets.dart';
import 'package:test_rx/model/data/tags/tag.dart';
import 'package:test_rx/presentation/common/base_view_with_view_model.dart';
import 'package:test_rx/presentation/pages/tags/tags_view_model.dart';

class TagsPage extends BasePage<TagsViewModel> {
  const TagsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<TagsViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tags Page'),
      ),
      body: RxLoader(
        commandResults: viewModel.loadTags.results,
        dataBuilder: (_, BuiltList<Tag> tags) => _TagsList(
          tags,
          onTap: viewModel.tapOnTag,
        ),
        placeHolderBuilder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
        errorBuilder: (context, error) => Center(child: Text('Error: $error')),
      ),
    );
  }
}

class _TagsList extends StatelessWidget {
  final BuiltList<Tag> tags;
  final Function(Tag) onTap;

  const _TagsList(this.tags, {Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemBuilder: (ctx, i) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            if (onTap != null) {
              onTap(tags[i]);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text('Tag: ${tags[i].name}'),
          ),
        ),
        separatorBuilder: (_, __) => Container(
          height: 1,
          color: Colors.black.withOpacity(0.7),
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
        itemCount: tags.length,
      );
}
