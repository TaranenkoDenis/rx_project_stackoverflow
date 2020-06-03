import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:test_rx/model/data/questions/owner.dart';
import 'package:test_rx/model/serializers/serializers.dart';

part 'answers.g.dart';

abstract class Answer implements Built<Answer, AnswerBuilder> {
  Answer._();

  factory Answer([updates(AnswerBuilder b)]) = _$Answer;

  @BuiltValueField(wireName: 'owner')
  @nullable
  Owner get owner;
  @BuiltValueField(wireName: 'is_accepted')
  @nullable
  bool get isAccepted;
  @BuiltValueField(wireName: 'community_owned_date')
  @nullable
  int get communityOwnedDate;
  @BuiltValueField(wireName: 'score')
  @nullable
  int get score;
  @BuiltValueField(wireName: 'last_activity_date')
  @nullable
  int get lastActivityDate;
  @BuiltValueField(wireName: 'last_edit_date')
  @nullable
  int get lastEditDate;
  @BuiltValueField(wireName: 'creation_date')
  @nullable
  int get creationDate;
  @BuiltValueField(wireName: 'answer_id')
  @nullable
  int get answerId;
  @BuiltValueField(wireName: 'question_id')
  @nullable
  int get questionId;
  @BuiltValueField(wireName: 'content_license')
  @nullable
  String get contentLicense;
  String toJson() =>
      json.encode(serializers.serializeWith(Answer.serializer, this));

  static Answer fromJson(String jsonString) =>
      serializers.deserializeWith(Answer.serializer, json.decode(jsonString));

  static Serializer<Answer> get serializer => _$answerSerializer;
}
