// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuestionsListResponse> _$questionsListResponseSerializer =
    new _$QuestionsListResponseSerializer();

class _$QuestionsListResponseSerializer
    implements StructuredSerializer<QuestionsListResponse> {
  @override
  final Iterable<Type> types = const [
    QuestionsListResponse,
    _$QuestionsListResponse
  ];
  @override
  final String wireName = 'QuestionsListResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, QuestionsListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Question)])),
      'has_more',
      serializers.serialize(object.hasMore,
          specifiedType: const FullType(bool)),
      'quota_max',
      serializers.serialize(object.quotaMax,
          specifiedType: const FullType(int)),
      'quota_remaining',
      serializers.serialize(object.quotaRemaining,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  QuestionsListResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuestionsListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Question)]))
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

class _$QuestionsListResponse extends QuestionsListResponse {
  @override
  final BuiltList<Question> items;
  @override
  final bool hasMore;
  @override
  final int quotaMax;
  @override
  final int quotaRemaining;

  factory _$QuestionsListResponse(
          [void Function(QuestionsListResponseBuilder) updates]) =>
      (new QuestionsListResponseBuilder()..update(updates)).build();

  _$QuestionsListResponse._(
      {this.items, this.hasMore, this.quotaMax, this.quotaRemaining})
      : super._() {
    if (items == null) {
      throw new BuiltValueNullFieldError('QuestionsListResponse', 'items');
    }
    if (hasMore == null) {
      throw new BuiltValueNullFieldError('QuestionsListResponse', 'hasMore');
    }
    if (quotaMax == null) {
      throw new BuiltValueNullFieldError('QuestionsListResponse', 'quotaMax');
    }
    if (quotaRemaining == null) {
      throw new BuiltValueNullFieldError(
          'QuestionsListResponse', 'quotaRemaining');
    }
  }

  @override
  QuestionsListResponse rebuild(
          void Function(QuestionsListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionsListResponseBuilder toBuilder() =>
      new QuestionsListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionsListResponse &&
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
    return (newBuiltValueToStringHelper('QuestionsListResponse')
          ..add('items', items)
          ..add('hasMore', hasMore)
          ..add('quotaMax', quotaMax)
          ..add('quotaRemaining', quotaRemaining))
        .toString();
  }
}

class QuestionsListResponseBuilder
    implements Builder<QuestionsListResponse, QuestionsListResponseBuilder> {
  _$QuestionsListResponse _$v;

  ListBuilder<Question> _items;
  ListBuilder<Question> get items =>
      _$this._items ??= new ListBuilder<Question>();
  set items(ListBuilder<Question> items) => _$this._items = items;

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

  QuestionsListResponseBuilder();

  QuestionsListResponseBuilder get _$this {
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
  void replace(QuestionsListResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$QuestionsListResponse;
  }

  @override
  void update(void Function(QuestionsListResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$QuestionsListResponse build() {
    _$QuestionsListResponse _$result;
    try {
      _$result = _$v ??
          new _$QuestionsListResponse._(
              items: items.build(),
              hasMore: hasMore,
              quotaMax: quotaMax,
              quotaRemaining: quotaRemaining);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'QuestionsListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
