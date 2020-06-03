import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:test_rx/model/data/tags/tag.dart';
import 'package:test_rx/model/serializers/serializers.dart';

part 'tags_response.g.dart';

abstract class TagsResponse
    implements Built<TagsResponse, TagsResponseBuilder> {
  TagsResponse._();

  factory TagsResponse([updates(TagsResponseBuilder b)]) = _$TagsResponse;

  @BuiltValueField(wireName: 'items')
  @nullable
  BuiltList<Tag> get items;
  @BuiltValueField(wireName: 'has_more')
  @nullable
  bool get hasMore;
  @BuiltValueField(wireName: 'quota_max')
  @nullable
  int get quotaMax;
  @BuiltValueField(wireName: 'quota_remaining')
  @nullable
  int get quotaRemaining;

  String toJson() =>
      json.encode(serializers.serializeWith(TagsResponse.serializer, this));

  static TagsResponse fromJson(String jsonString) => serializers
      .deserializeWith(TagsResponse.serializer, json.decode(jsonString));

  static Serializer<TagsResponse> get serializer => _$tagsResponseSerializer;
}
