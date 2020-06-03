// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TagsResponse> _$tagsResponseSerializer =
    new _$TagsResponseSerializer();

class _$TagsResponseSerializer implements StructuredSerializer<TagsResponse> {
  @override
  final Iterable<Type> types = const [TagsResponse, _$TagsResponse];
  @override
  final String wireName = 'TagsResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, TagsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.items != null) {
      result
        ..add('items')
        ..add(serializers.serialize(object.items,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Tag)])));
    }
    if (object.hasMore != null) {
      result
        ..add('has_more')
        ..add(serializers.serialize(object.hasMore,
            specifiedType: const FullType(bool)));
    }
    if (object.quotaMax != null) {
      result
        ..add('quota_max')
        ..add(serializers.serialize(object.quotaMax,
            specifiedType: const FullType(int)));
    }
    if (object.quotaRemaining != null) {
      result
        ..add('quota_remaining')
        ..add(serializers.serialize(object.quotaRemaining,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  TagsResponse deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TagsResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Tag)]))
              as BuiltList<Object>);
          break;
        case 'has_more':
          result.hasMore = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'quota_max':
          result.quotaMax = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'quota_remaining':
          result.quotaRemaining = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$TagsResponse extends TagsResponse {
  @override
  final BuiltList<Tag> items;
  @override
  final bool hasMore;
  @override
  final int quotaMax;
  @override
  final int quotaRemaining;

  factory _$TagsResponse([void Function(TagsResponseBuilder) updates]) =>
      (new TagsResponseBuilder()..update(updates)).build();

  _$TagsResponse._(
      {this.items, this.hasMore, this.quotaMax, this.quotaRemaining})
      : super._();

  @override
  TagsResponse rebuild(void Function(TagsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagsResponseBuilder toBuilder() => new TagsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagsResponse &&
        items == other.items &&
        hasMore == other.hasMore &&
        quotaMax == other.quotaMax &&
        quotaRemaining == other.quotaRemaining;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, items.hashCode), hasMore.hashCode), quotaMax.hashCode),
        quotaRemaining.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TagsResponse')
          ..add('items', items)
          ..add('hasMore', hasMore)
          ..add('quotaMax', quotaMax)
          ..add('quotaRemaining', quotaRemaining))
        .toString();
  }
}

class TagsResponseBuilder
    implements Builder<TagsResponse, TagsResponseBuilder> {
  _$TagsResponse _$v;

  ListBuilder<Tag> _items;
  ListBuilder<Tag> get items => _$this._items ??= new ListBuilder<Tag>();
  set items(ListBuilder<Tag> items) => _$this._items = items;

  bool _hasMore;
  bool get hasMore => _$this._hasMore;
  set hasMore(bool hasMore) => _$this._hasMore = hasMore;

  int _quotaMax;
  int get quotaMax => _$this._quotaMax;
  set quotaMax(int quotaMax) => _$this._quotaMax = quotaMax;

  int _quotaRemaining;
  int get quotaRemaining => _$this._quotaRemaining;
  set quotaRemaining(int quotaRemaining) =>
      _$this._quotaRemaining = quotaRemaining;

  TagsResponseBuilder();

  TagsResponseBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items?.toBuilder();
      _hasMore = _$v.hasMore;
      _quotaMax = _$v.quotaMax;
      _quotaRemaining = _$v.quotaRemaining;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TagsResponse;
  }

  @override
  void update(void Function(TagsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TagsResponse build() {
    _$TagsResponse _$result;
    try {
      _$result = _$v ??
          new _$TagsResponse._(
              items: _items?.build(),
              hasMore: hasMore,
              quotaMax: quotaMax,
              quotaRemaining: quotaRemaining);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TagsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
