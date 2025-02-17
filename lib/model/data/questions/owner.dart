import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:test_rx/model/serializers/serializers.dart';

part 'owner.g.dart';

abstract class Owner implements Built<Owner, OwnerBuilder> {
  Owner._();

  factory Owner([updates(OwnerBuilder b)]) = _$Owner;

  @BuiltValueField(wireName: 'reputation')
  @nullable
  int get reputation;
  @BuiltValueField(wireName: 'user_id')
  @nullable
  int get userId;
  @BuiltValueField(wireName: 'user_type')
  @nullable
  String get userType;
  @BuiltValueField(wireName: 'profile_image')
  @nullable
  String get profileImage;
  @BuiltValueField(wireName: 'display_name')
  @nullable
  String get displayName;
  @BuiltValueField(wireName: 'link')
  @nullable
  String get link;
  String toJson() {
    return json.encode(serializers.serializeWith(Owner.serializer, this));
  }

  static Owner fromJson(String jsonString) {
    return serializers.deserializeWith(
        Owner.serializer, json.decode(jsonString));
  }

  static Serializer<Owner> get serializer => _$ownerSerializer;
}
