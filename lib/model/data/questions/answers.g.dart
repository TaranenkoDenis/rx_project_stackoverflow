// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Answer> _$answerSerializer = new _$AnswerSerializer();

class _$AnswerSerializer implements StructuredSerializer<Answer> {
  @override
  final Iterable<Type> types = const [Answer, _$Answer];
  @override
  final String wireName = 'Answer';

  @override
  Iterable<Object> serialize(Serializers serializers, Answer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.owner != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(object.owner,
            specifiedType: const FullType(Owner)));
    }
    if (object.isAccepted != null) {
      result
        ..add('is_accepted')
        ..add(serializers.serialize(object.isAccepted,
            specifiedType: const FullType(bool)));
    }
    if (object.communityOwnedDate != null) {
      result
        ..add('community_owned_date')
        ..add(serializers.serialize(object.communityOwnedDate,
            specifiedType: const FullType(int)));
    }
    if (object.score != null) {
      result
        ..add('score')
        ..add(serializers.serialize(object.score,
            specifiedType: const FullType(int)));
    }
    if (object.lastActivityDate != null) {
      result
        ..add('last_activity_date')
        ..add(serializers.serialize(object.lastActivityDate,
            specifiedType: const FullType(int)));
    }
    if (object.lastEditDate != null) {
      result
        ..add('last_edit_date')
        ..add(serializers.serialize(object.lastEditDate,
            specifiedType: const FullType(int)));
    }
    if (object.creationDate != null) {
      result
        ..add('creation_date')
        ..add(serializers.serialize(object.creationDate,
            specifiedType: const FullType(int)));
    }
    if (object.answerId != null) {
      result
        ..add('answer_id')
        ..add(serializers.serialize(object.answerId,
            specifiedType: const FullType(int)));
    }
    if (object.questionId != null) {
      result
        ..add('question_id')
        ..add(serializers.serialize(object.questionId,
            specifiedType: const FullType(int)));
    }
    if (object.contentLicense != null) {
      result
        ..add('content_license')
        ..add(serializers.serialize(object.contentLicense,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Answer deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnswerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
              specifiedType: const FullType(Owner)) as Owner);
          break;
        case 'is_accepted':
          result.isAccepted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'community_owned_date':
          result.communityOwnedDate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'last_activity_date':
          result.lastActivityDate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'last_edit_date':
          result.lastEditDate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'creation_date':
          result.creationDate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'answer_id':
          result.answerId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'question_id':
          result.questionId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'content_license':
          result.contentLicense = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Answer extends Answer {
  @override
  final Owner owner;
  @override
  final bool isAccepted;
  @override
  final int communityOwnedDate;
  @override
  final int score;
  @override
  final int lastActivityDate;
  @override
  final int lastEditDate;
  @override
  final int creationDate;
  @override
  final int answerId;
  @override
  final int questionId;
  @override
  final String contentLicense;

  factory _$Answer([void Function(AnswerBuilder) updates]) =>
      (new AnswerBuilder()..update(updates)).build();

  _$Answer._(
      {this.owner,
      this.isAccepted,
      this.communityOwnedDate,
      this.score,
      this.lastActivityDate,
      this.lastEditDate,
      this.creationDate,
      this.answerId,
      this.questionId,
      this.contentLicense})
      : super._();

  @override
  Answer rebuild(void Function(AnswerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnswerBuilder toBuilder() => new AnswerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Answer &&
        owner == other.owner &&
        isAccepted == other.isAccepted &&
        communityOwnedDate == other.communityOwnedDate &&
        score == other.score &&
        lastActivityDate == other.lastActivityDate &&
        lastEditDate == other.lastEditDate &&
        creationDate == other.creationDate &&
        answerId == other.answerId &&
        questionId == other.questionId &&
        contentLicense == other.contentLicense;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, owner.hashCode),
                                        isAccepted.hashCode),
                                    communityOwnedDate.hashCode),
                                score.hashCode),
                            lastActivityDate.hashCode),
                        lastEditDate.hashCode),
                    creationDate.hashCode),
                answerId.hashCode),
            questionId.hashCode),
        contentLicense.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Answer')
          ..add('owner', owner)
          ..add('isAccepted', isAccepted)
          ..add('communityOwnedDate', communityOwnedDate)
          ..add('score', score)
          ..add('lastActivityDate', lastActivityDate)
          ..add('lastEditDate', lastEditDate)
          ..add('creationDate', creationDate)
          ..add('answerId', answerId)
          ..add('questionId', questionId)
          ..add('contentLicense', contentLicense))
        .toString();
  }
}

class AnswerBuilder implements Builder<Answer, AnswerBuilder> {
  _$Answer _$v;

  OwnerBuilder _owner;
  OwnerBuilder get owner => _$this._owner ??= new OwnerBuilder();
  set owner(OwnerBuilder owner) => _$this._owner = owner;

  bool _isAccepted;
  bool get isAccepted => _$this._isAccepted;
  set isAccepted(bool isAccepted) => _$this._isAccepted = isAccepted;

  int _communityOwnedDate;
  int get communityOwnedDate => _$this._communityOwnedDate;
  set communityOwnedDate(int communityOwnedDate) =>
      _$this._communityOwnedDate = communityOwnedDate;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  int _lastActivityDate;
  int get lastActivityDate => _$this._lastActivityDate;
  set lastActivityDate(int lastActivityDate) =>
      _$this._lastActivityDate = lastActivityDate;

  int _lastEditDate;
  int get lastEditDate => _$this._lastEditDate;
  set lastEditDate(int lastEditDate) => _$this._lastEditDate = lastEditDate;

  int _creationDate;
  int get creationDate => _$this._creationDate;
  set creationDate(int creationDate) => _$this._creationDate = creationDate;

  int _answerId;
  int get answerId => _$this._answerId;
  set answerId(int answerId) => _$this._answerId = answerId;

  int _questionId;
  int get questionId => _$this._questionId;
  set questionId(int questionId) => _$this._questionId = questionId;

  String _contentLicense;
  String get contentLicense => _$this._contentLicense;
  set contentLicense(String contentLicense) =>
      _$this._contentLicense = contentLicense;

  AnswerBuilder();

  AnswerBuilder get _$this {
    if (_$v != null) {
      _owner = _$v.owner?.toBuilder();
      _isAccepted = _$v.isAccepted;
      _communityOwnedDate = _$v.communityOwnedDate;
      _score = _$v.score;
      _lastActivityDate = _$v.lastActivityDate;
      _lastEditDate = _$v.lastEditDate;
      _creationDate = _$v.creationDate;
      _answerId = _$v.answerId;
      _questionId = _$v.questionId;
      _contentLicense = _$v.contentLicense;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Answer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Answer;
  }

  @override
  void update(void Function(AnswerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Answer build() {
    _$Answer _$result;
    try {
      _$result = _$v ??
          new _$Answer._(
              owner: _owner?.build(),
              isAccepted: isAccepted,
              communityOwnedDate: communityOwnedDate,
              score: score,
              lastActivityDate: lastActivityDate,
              lastEditDate: lastEditDate,
              creationDate: creationDate,
              answerId: answerId,
              questionId: questionId,
              contentLicense: contentLicense);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'owner';
        _owner?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Answer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
