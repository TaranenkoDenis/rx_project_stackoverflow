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
        dataBuilder: (_, BuiltList<Tag> tags) => Stack(
          children: <Widget>[
            _TagsList(
              tags,
              onTap: viewModel.tapOnTag,
            ),
            Positioned(
              bottom: 32,
              right: 16,
              child: IntrinsicHeight(
                child: SizedBox(
                  width: 150,
                  child: _ReactiveRandomTag(
                    onTap: viewModel.tapOnTag,
                    randomTagStream: viewModel.randomTag,
                  ),
                ),
              ),
            ),
          ],
        ),
        placeHolderBuilder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
        errorBuilder: (context, error) => Center(child: Text('Error: $error')),
      ),
    );
  }
}

class _ReactiveRandomTag extends StatelessWidget {
  final Function(Tag) onTap;
  final Stream<Tag> randomTagStream;
  const _ReactiveRandomTag({
    @required this.onTap,
    @required this.randomTagStream,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ReactiveBuilder<Tag>(
        builder: (BuildContext context, data) => _RandomTag(
          tagName: data.name,
          onTap: () => onTap(data),
        ),
        errorBuilder: (context, error) => const SizedBox.shrink(),
        placeHolderBuilder: (context) => const SizedBox.shrink(),
        stream: randomTagStream,
      );
}

class _RandomTag extends StatelessWidget {
  final String tagName;
  final VoidCallback onTap;
  const _RandomTag({Key key, this.tagName, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap ?? () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).accentColor,
            boxShadow: const [BoxShadow(offset: Offset(0, 4), blurRadius: 16)],
          ),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: Text(
              tagName != null ? 'Try $tagName' : 'No tag',
              key: ValueKey(tagName),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
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
