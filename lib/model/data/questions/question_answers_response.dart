import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:test_rx/model/data/questions/answers.dart';
import 'package:test_rx/model/serializers/serializers.dart';

part 'question_answers_response.g.dart';

abstract class QuestionAnswersResponse
    implements Built<QuestionAnswersResponse, QuestionAnswersResponseBuilder> {
  QuestionAnswersResponse._();

  factory QuestionAnswersResponse([updates(QuestionAnswersResponseBuilder b)]) =
      _$QuestionAnswersResponse;

  @BuiltValueField(wireName: 'items')
  BuiltList<Answer> get items;
  @BuiltValueField(wireName: 'has_more')
  bool get hasMore;
  @BuiltValueField(wireName: 'quota_max')
  int get quotaMax;
  @BuiltValueField(wireName: 'quota_remaining')
  int get quotaRemaining;
  String toJson() {
    return json.encode(
        serializers.serializeWith(QuestionAnswersResponse.serializer, this));
  }

  static QuestionAnswersResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        QuestionAnswersResponse.serializer, json.decode(jsonString));
  }

  static Serializer<QuestionAnswersResponse> get serializer =>
      _$questionAnswersResponseSerializer;
}
