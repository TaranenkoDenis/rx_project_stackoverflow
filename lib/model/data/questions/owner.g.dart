// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Owner> _$ownerSerializer = new _$OwnerSerializer();

class _$OwnerSerializer implements StructuredSerializer<Owner> {
  @override
  final Iterable<Type> types = const [Owner, _$Owner];
  @override
  final String wireName = 'Owner';

  @override
  Iterable<Object> serialize(Serializers serializers, Owner object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'reputation',
      serializers.serialize(object.reputation,
          specifiedType: const FullType(int)),
      'user_id',
      serializers.serialize(object.userId, specifiedType: const FullType(int)),
      'user_type',
      serializers.serialize(object.userType,
          specifiedType: const FullType(String)),
      'profile_image',
      serializers.serialize(object.profileImage,
          specifiedType: const FullType(String)),
      'display_name',
      serializers.serialize(object.displayName,
          specifiedType: const FullType(String)),
      'link',
      serializers.serialize(object.link, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Owner deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OwnerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'reputation':
          result.reputation = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'user_type':
          result.userType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile_image':
          result.profileImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Owner extends Owner {
  @override
  final int reputation;
  @override
  final int userId;
  @override
  final String userType;
  @override
  final String profileImage;
  @override
  final String displayName;
  @override
  final String link;

  factory _$Owner([void Function(OwnerBuilder) updates]) =>
      (new OwnerBuilder()..update(updates)).build();

  _$Owner._(
      {this.reputation,
      this.userId,
      this.userType,
      this.profileImage,
      this.displayName,
      this.link})
      : super._() {
    if (reputation == null) {
      throw new BuiltValueNullFieldError('Owner', 'reputation');
    }
    if (userId == null) {
      throw new BuiltValueNullFieldError('Owner', 'userId');
    }
    if (userType == null) {
      throw new BuiltValueNullFieldError('Owner', 'userType');
    }
    if (profileImage == null) {
      throw new BuiltValueNullFieldError('Owner', 'profileImage');
    }
    if (displayName == null) {
      throw new BuiltValueNullFieldError('Owner', 'displayName');
    }
    if (link == null) {
      throw new BuiltValueNullFieldError('Owner', 'link');
    }
  }

  @override
  Owner rebuild(void Function(OwnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OwnerBuilder toBuilder() => new OwnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Owner &&
        reputation == other.reputation &&
        userId == other.userId &&
        userType == other.userType &&
        profileImage == other.profileImage &&
        displayName == other.displayName &&
        link == other.link;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, reputation.hashCode), userId.hashCode),
                    userType.hashCode),
                profileImage.hashCode),
            displayName.hashCode),
        link.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Owner')
          ..add('reputation', reputation)
          ..add('userId', userId)
          ..add('userType', userType)
          ..add('profileImage', profileImage)
          ..add('displayName', displayName)
          ..add('link', link))
        .toString();
  }
}

class OwnerBuilder implements Builder<Owner, OwnerBuilder> {
  _$Owner _$v;

  int _reputation;
  int get reputation => _$this._reputation;
  set reputation(int reputation) => _$this._reputation = reputation;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  String _userType;
  String get userType => _$this._userType;
  set userType(String userType) => _$this._userType = userType;

  String _profileImage;
  String get profileImage => _$this._profileImage;
  set profileImage(String profileImage) => _$this._profileImage = profileImage;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  OwnerBuilder();

  OwnerBuilder get _$this {
    if (_$v != null) {
      _reputation = _$v.reputation;
      _userId = _$v.userId;
      _userType = _$v.userType;
      _profileImage = _$v.profileImage;
      _displayName = _$v.displayName;
      _link = _$v.link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Owner other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Owner;
  }

  @override
  void update(void Function(OwnerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Owner build() {
    final _$result = _$v ??
        new _$Owner._(
            reputation: reputation,
            userId: userId,
            userType: userType,
            profileImage: profileImage,
            displayName: displayName,
            link: link);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
