import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:test_rx/model/data/questions/answers.dart';
import 'package:test_rx/model/data/questions/owner.dart';
import 'package:test_rx/model/data/questions/question.dart';
import 'package:test_rx/model/data/questions/question_answers_response.dart';
import 'package:test_rx/model/data/questions/questions_list_response.dart';
import 'package:test_rx/model/data/tags/tag.dart';
import 'package:test_rx/model/data/tags/tags_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  // ServerError,
  Question,
  QuestionsListResponse,
  Owner,
  Tag,
  TagsResponse,
  Answer,
  QuestionAnswersResponse,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Question)]),
        () => ListBuilder<Question>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(QuestionsListResponse)]),
        () => ListBuilder<QuestionsListResponse>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Owner)]),
        () => ListBuilder<Owner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Tag)]),
        () => ListBuilder<Tag>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TagsResponse)]),
        () => ListBuilder<TagsResponse>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Answer)]),
        () => ListBuilder<Answer>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(QuestionAnswersResponse)]),
        () => ListBuilder<QuestionAnswersResponse>(),
      )
      ..addPlugin(StandardJsonPlugin()))
    .build();

T deserialize<T>(dynamic value) => serializers.deserializeWith<T>(
    serializers.serializerForType(T) as Serializer<T>, value);

BuiltList<T> deserializeListOf<T>(dynamic value) {
  assert(value is Iterable<dynamic>);
  return BuiltList.from((value as Iterable<dynamic>)
      .map((value) => deserialize<T>(value))
      .toList(growable: false));
}
