import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:test_rx/model/serializers/serializers.dart';

import 'owner.dart';

part 'question.g.dart';

abstract class Question implements Built<Question, QuestionBuilder> {
  Question._();

  factory Question([updates(QuestionBuilder b)]) = _$Question;

  @BuiltValueField(wireName: 'tags')
  @nullable
  BuiltList<String> get tags;
  @BuiltValueField(wireName: 'owner')
  @nullable
  Owner get owner;
  @BuiltValueField(wireName: 'is_answered')
  @nullable
  bool get isAnswered;
  @BuiltValueField(wireName: 'view_count')
  @nullable
  int get viewCount;
  @BuiltValueField(wireName: 'answer_count')
  @nullable
  int get answerCount;
  @BuiltValueField(wireName: 'score')
  @nullable
  int get score;
  @BuiltValueField(wireName: 'last_activity_date')
  @nullable
  int get lastActivityDate;
  @BuiltValueField(wireName: 'creation_date')
  @nullable
  int get creationDate;
  @BuiltValueField(wireName: 'question_id')
  @nullable
  int get questionId;
  @BuiltValueField(wireName: 'content_license')
  @nullable
  String get contentLicense;
  @BuiltValueField(wireName: 'link')
  String get link;
  @BuiltValueField(wireName: 'title')
  String get title;
  String toJson() =>
      json.encode(serializers.serializeWith(Question.serializer, this));

  static Question fromJson(String jsonString) =>
      serializers.deserializeWith(Question.serializer, json.decode(jsonString));

  static Serializer<Question> get serializer => _$questionSerializer;
}
