import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:test_rx/model/serializers/serializers.dart';

part 'tag.g.dart';

abstract class Tag implements Built<Tag, TagBuilder> {
  Tag._();

  factory Tag([updates(TagBuilder b)]) = _$Tag;

  @BuiltValueField(wireName: 'has_synonyms')
  @nullable
  bool get hasSynonyms;
  @BuiltValueField(wireName: 'is_moderator_only')
  @nullable
  bool get isModeratorOnly;
  @BuiltValueField(wireName: 'is_required')
  @nullable
  bool get isRequired;
  @BuiltValueField(wireName: 'count')
  int get count;
  @BuiltValueField(wireName: 'name')
  String get name;
  String toJson() =>
      json.encode(serializers.serializeWith(Tag.serializer, this));

  static Tag fromJson(String jsonString) =>
      serializers.deserializeWith(Tag.serializer, json.decode(jsonString));

  static Serializer<Tag> get serializer => _$tagSerializer;
}
