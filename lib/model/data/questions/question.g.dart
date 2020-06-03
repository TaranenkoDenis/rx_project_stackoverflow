// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Question> _$questionSerializer = new _$QuestionSerializer();

class _$QuestionSerializer implements StructuredSerializer<Question> {
  @override
  final Iterable<Type> types = const [Question, _$Question];
  @override
  final String wireName = 'Question';

  @override
  Iterable<Object> serialize(Serializers serializers, Question object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'link',
      serializers.serialize(object.link, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.owner != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(object.owner,
            specifiedType: const FullType(Owner)));
    }
    if (object.isAnswered != null) {
      result
        ..add('is_answered')
        ..add(serializers.serialize(object.isAnswered,
            specifiedType: const FullType(bool)));
    }
    if (object.viewCount != null) {
      result
        ..add('view_count')
        ..add(serializers.serialize(object.viewCount,
            specifiedType: const FullType(int)));
    }
    if (object.answerCount != null) {
      result
        ..add('answer_count')
        ..add(serializers.serialize(object.answerCount,
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
    if (object.creationDate != null) {
      result
        ..add('creation_date')
        ..add(serializers.serialize(object.creationDate,
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
  Question deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuestionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
              specifiedType: const FullType(Owner)) as Owner);
          break;
        case 'is_answered':
          result.isAnswered = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'view_count':
          result.viewCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'answer_count':
          result.answerCount = serializers.deserialize(value,
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
        case 'creation_date':
          result.creationDate = serializers.deserialize(value,
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
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Question extends Question {
  @override
  final BuiltList<String> tags;
  @override
  final Owner owner;
  @override
  final bool isAnswered;
  @override
  final int viewCount;
  @override
  final int answerCount;
  @override
  final int score;
  @override
  final int lastActivityDate;
  @override
  final int creationDate;
  @override
  final int questionId;
  @override
  final String contentLicense;
  @override
  final String link;
  @override
  final String title;

  factory _$Question([void Function(QuestionBuilder) updates]) =>
      (new QuestionBuilder()..update(updates)).build();

  _$Question._(
      {this.tags,
      this.owner,
      this.isAnswered,
      this.viewCount,
      this.answerCount,
      this.score,
      this.lastActivityDate,
      this.creationDate,
      this.questionId,
      this.contentLicense,
      this.link,
      this.title})
      : super._() {
    if (link == null) {
      throw new BuiltValueNullFieldError('Question', 'link');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Question', 'title');
    }
  }

  @override
  Question rebuild(void Function(QuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionBuilder toBuilder() => new QuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Question &&
        tags == other.tags &&
        owner == other.owner &&
        isAnswered == other.isAnswered &&
        viewCount == other.viewCount &&
        answerCount == other.answerCount &&
        score == other.score &&
        lastActivityDate == other.lastActivityDate &&
        creationDate == other.creationDate &&
        questionId == other.questionId &&
        contentLicense == other.contentLicense &&
        link == other.link &&
        title == other.title;
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
                                    $jc(
                                        $jc(
                                            $jc($jc(0, tags.hashCode),
                                                owner.hashCode),
                                            isAnswered.hashCode),
                                        viewCount.hashCode),
                                    answerCount.hashCode),
                                score.hashCode),
                            lastActivityDate.hashCode),
                        creationDate.hashCode),
                    questionId.hashCode),
                contentLicense.hashCode),
            link.hashCode),
        title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Question')
          ..add('tags', tags)
          ..add('owner', owner)
          ..add('isAnswered', isAnswered)
          ..add('viewCount', viewCount)
          ..add('answerCount', answerCount)
          ..add('score', score)
          ..add('lastActivityDate', lastActivityDate)
          ..add('creationDate', creationDate)
          ..add('questionId', questionId)
          ..add('contentLicense', contentLicense)
          ..add('link', link)
          ..add('title', title))
        .toString();
  }
}

class QuestionBuilder implements Builder<Question, QuestionBuilder> {
  _$Question _$v;

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  OwnerBuilder _owner;
  OwnerBuilder get owner => _$this._owner ??= new OwnerBuilder();
  set owner(OwnerBuilder owner) => _$this._owner = owner;

  bool _isAnswered;
  bool get isAnswered => _$this._isAnswered;
  set isAnswered(bool isAnswered) => _$this._isAnswered = isAnswered;

  int _viewCount;
  int get viewCount => _$this._viewCount;
  set viewCount(int viewCount) => _$this._viewCount = viewCount;

  int _answerCount;
  int get answerCount => _$this._answerCount;
  set answerCount(int answerCount) => _$this._answerCount = answerCount;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  int _lastActivityDate;
  int get lastActivityDate => _$this._lastActivityDate;
  set lastActivityDate(int lastActivityDate) =>
      _$this._lastActivityDate = lastActivityDate;

  int _creationDate;
  int get creationDate => _$this._creationDate;
  set creationDate(int creationDate) => _$this._creationDate = creationDate;

  int _questionId;
  int get questionId => _$this._questionId;
  set questionId(int questionId) => _$this._questionId = questionId;

  String _contentLicense;
  String get contentLicense => _$this._contentLicense;
  set contentLicense(String contentLicense) =>
      _$this._contentLicense = contentLicense;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  QuestionBuilder();

  QuestionBuilder get _$this {
    if (_$v != null) {
      _tags = _$v.tags?.toBuilder();
      _owner = _$v.owner?.toBuilder();
      _isAnswered = _$v.isAnswered;
      _viewCount = _$v.viewCount;
      _answerCount = _$v.answerCount;
      _score = _$v.score;
      _lastActivityDate = _$v.lastActivityDate;
      _creationDate = _$v.creationDate;
      _questionId = _$v.questionId;
      _contentLicense = _$v.contentLicense;
      _link = _$v.link;
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Question other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Question;
  }

  @override
  void update(void Function(QuestionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Question build() {
    _$Question _$result;
    try {
      _$result = _$v ??
          new _$Question._(
              tags: _tags?.build(),
              owner: _owner?.build(),
              isAnswered: isAnswered,
              viewCount: viewCount,
              answerCount: answerCount,
              score: score,
              lastActivityDate: lastActivityDate,
              creationDate: creationDate,
              questionId: questionId,
              contentLicense: contentLicense,
              link: link,
              title: title);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'owner';
        _owner?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Question', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
