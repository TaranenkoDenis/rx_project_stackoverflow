// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Tag> _$tagSerializer = new _$TagSerializer();

class _$TagSerializer implements StructuredSerializer<Tag> {
  @override
  final Iterable<Type> types = const [Tag, _$Tag];
  @override
  final String wireName = 'Tag';

  @override
  Iterable<Object> serialize(Serializers serializers, Tag object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    if (object.hasSynonyms != null) {
      result
        ..add('has_synonyms')
        ..add(serializers.serialize(object.hasSynonyms,
            specifiedType: const FullType(bool)));
    }
    if (object.isModeratorOnly != null) {
      result
        ..add('is_moderator_only')
        ..add(serializers.serialize(object.isModeratorOnly,
            specifiedType: const FullType(bool)));
    }
    if (object.isRequired != null) {
      result
        ..add('is_required')
        ..add(serializers.serialize(object.isRequired,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Tag deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TagBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'has_synonyms':
          result.hasSynonyms = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_moderator_only':
          result.isModeratorOnly = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_required':
          result.isRequired = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Tag extends Tag {
  @override
  final bool hasSynonyms;
  @override
  final bool isModeratorOnly;
  @override
  final bool isRequired;
  @override
  final int count;
  @override
  final String name;

  factory _$Tag([void Function(TagBuilder) updates]) =>
      (new TagBuilder()..update(updates)).build();

  _$Tag._(
      {this.hasSynonyms,
      this.isModeratorOnly,
      this.isRequired,
      this.count,
      this.name})
      : super._() {
    if (count == null) {
      throw new BuiltValueNullFieldError('Tag', 'count');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Tag', 'name');
    }
  }

  @override
  Tag rebuild(void Function(TagBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagBuilder toBuilder() => new TagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tag &&
        hasSynonyms == other.hasSynonyms &&
        isModeratorOnly == other.isModeratorOnly &&
        isRequired == other.isRequired &&
        count == other.count &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, hasSynonyms.hashCode), isModeratorOnly.hashCode),
                isRequired.hashCode),
            count.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Tag')
          ..add('hasSynonyms', hasSynonyms)
          ..add('isModeratorOnly', isModeratorOnly)
          ..add('isRequired', isRequired)
          ..add('count', count)
          ..add('name', name))
        .toString();
  }
}

class TagBuilder implements Builder<Tag, TagBuilder> {
  _$Tag _$v;

  bool _hasSynonyms;
  bool get hasSynonyms => _$this._hasSynonyms;
  set hasSynonyms(bool hasSynonyms) => _$this._hasSynonyms = hasSynonyms;

  bool _isModeratorOnly;
  bool get isModeratorOnly => _$this._isModeratorOnly;
  set isModeratorOnly(bool isModeratorOnly) =>
      _$this._isModeratorOnly = isModeratorOnly;

  bool _isRequired;
  bool get isRequired => _$this._isRequired;
  set isRequired(bool isRequired) => _$this._isRequired = isRequired;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  TagBuilder();

  TagBuilder get _$this {
    if (_$v != null) {
      _hasSynonyms = _$v.hasSynonyms;
      _isModeratorOnly = _$v.isModeratorOnly;
      _isRequired = _$v.isRequired;
      _count = _$v.count;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tag other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Tag;
  }

  @override
  void update(void Function(TagBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Tag build() {
    final _$result = _$v ??
        new _$Tag._(
            hasSynonyms: hasSynonyms,
            isModeratorOnly: isModeratorOnly,
            isRequired: isRequired,
            count: count,
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
