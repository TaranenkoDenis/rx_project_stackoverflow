import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:test_rx/model/data/questions/question.dart';
import 'package:test_rx/model/serializers/serializers.dart';

part 'questions_list_response.g.dart';

abstract class QuestionsListResponse
    implements Built<QuestionsListResponse, QuestionsListResponseBuilder> {
  QuestionsListResponse._();

  factory QuestionsListResponse([updates(QuestionsListResponseBuilder b)]) =
      _$QuestionsListResponse;

  @BuiltValueField(wireName: 'items')
  BuiltList<Question> get items;
  @BuiltValueField(wireName: 'has_more')
  bool get hasMore;
  @BuiltValueField(wireName: 'quota_max')
  int get quotaMax;
  @BuiltValueField(wireName: 'quota_remaining')
  int get quotaRemaining;

  String toJson() => json.encode(
      serializers.serializeWith(QuestionsListResponse.serializer, this));

  static QuestionsListResponse fromJson(String jsonString) =>
      serializers.deserializeWith(
          QuestionsListResponse.serializer, json.decode(jsonString));

  static Serializer<QuestionsListResponse> get serializer =>
      _$questionsListResponseSerializer;
}
