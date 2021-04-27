// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CardTearOff {
  const _$CardTearOff();

  _Card call(
      {required int id,
      required int nid,
      required int did,
      int ord = 0,
      required int mod,
      int usn = 0,
      int type = 0,
      int queue = 0,
      required int due,
      int ivl = 0,
      int factor = 0,
      int reps = 0,
      int lapses = 0,
      int left = 0,
      int odue = 0,
      int odid = 0,
      int flags = 0,
      String? data}) {
    return _Card(
      id: id,
      nid: nid,
      did: did,
      ord: ord,
      mod: mod,
      usn: usn,
      type: type,
      queue: queue,
      due: due,
      ivl: ivl,
      factor: factor,
      reps: reps,
      lapses: lapses,
      left: left,
      odue: odue,
      odid: odid,
      flags: flags,
      data: data,
    );
  }
}

/// @nodoc
const $Card = _$CardTearOff();

/// @nodoc
mixin _$Card {
  /// the epoch milliseconds of when the card was created
  int get id => throw _privateConstructorUsedError;

  /// notes.id
  int get nid => throw _privateConstructorUsedError;

  /// deck id (available in col table)
  int get did => throw _privateConstructorUsedError;

  /// ordinal : identifies which of the card templates or cloze deletions it corresponds to
  /// for card templates, valid values are from 0 to num templates - 1
  /// for cloze deletions, valid values are from 0 to max cloze index - 1 (they're 0 indexed despite the first being called `c1`)
  int get ord => throw _privateConstructorUsedError;

  /// modification time as epoch seconds
  int get mod => throw _privateConstructorUsedError;

  /// update sequence number : used to figure out diffs when syncing.
  /// value of -1 indicates changes that need to be pushed to server.
  /// usn < server usn indicates changes that need to be pulled from server.
  int get usn => throw _privateConstructorUsedError;

  /// 0=new, 1=learning, 2=review, 3=relearning
  int get type => throw _privateConstructorUsedError;

  /// -3=user buried(In scheduler 2),
  /// -2=sched buried (In scheduler 2),
  /// -2=buried(In scheduler 1),
  /// -1=suspended,
  /// 0=new, 1=learning, 2=review (as for type)
  /// 3=in learning, next rev in at least a day after the previous review
  /// 4=preview
  int get queue => throw _privateConstructorUsedError;

  /// Due is used differently for different card types:
  /// new: note id or random int
  /// due: integer day, relative to the collection's creation time
  /// learning: integer timestamp in second
  int get due => throw _privateConstructorUsedError;

  /// interval (used in SRS algorithm). Negative = seconds, positive = days
  int get ivl => throw _privateConstructorUsedError;

  /// The ease factor of the card in permille (parts per thousand). If the ease factor is 2500, the card’s interval will be multiplied by 2.5 the next time you press Good.
  int get factor => throw _privateConstructorUsedError;

  /// number of reviews
  int get reps => throw _privateConstructorUsedError;

  /// the number of times the card went from a "was answered correctly"
  /// to "was answered incorrectly" state
  int get lapses => throw _privateConstructorUsedError;

  /// of the form a*1000+b, with:
  /// b the number of reps left till graduation
  /// a the number of reps left today
  int get left => throw _privateConstructorUsedError;

  /// original due: In filtered decks, it's the original due date that the card had before moving to filtered.
  /// If the card lapsed in scheduler1, then it's the value before the lapse. (This is used when switching to scheduler 2. At this time, cards in learning becomes due again, with their previous due date)
  /// In any other case it's 0.
  int get odue => throw _privateConstructorUsedError;

  /// original did: only used when the card is currently in filtered deck
  int get odid => throw _privateConstructorUsedError;

  /// an integer. This integer mod 8 represents a "flag", which can be see in browser and while reviewing a note. Red 1, Orange 2, Green 3, Blue 4, no flag: 0. This integer divided by 8 represents currently nothing
  int get flags => throw _privateConstructorUsedError;

  /// Currently Unused
  String? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardCopyWith<Card> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int nid,
      int did,
      int ord,
      int mod,
      int usn,
      int type,
      int queue,
      int due,
      int ivl,
      int factor,
      int reps,
      int lapses,
      int left,
      int odue,
      int odid,
      int flags,
      String? data});
}

/// @nodoc
class _$CardCopyWithImpl<$Res> implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  final Card _value;
  // ignore: unused_field
  final $Res Function(Card) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nid = freezed,
    Object? did = freezed,
    Object? ord = freezed,
    Object? mod = freezed,
    Object? usn = freezed,
    Object? type = freezed,
    Object? queue = freezed,
    Object? due = freezed,
    Object? ivl = freezed,
    Object? factor = freezed,
    Object? reps = freezed,
    Object? lapses = freezed,
    Object? left = freezed,
    Object? odue = freezed,
    Object? odid = freezed,
    Object? flags = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nid: nid == freezed
          ? _value.nid
          : nid // ignore: cast_nullable_to_non_nullable
              as int,
      did: did == freezed
          ? _value.did
          : did // ignore: cast_nullable_to_non_nullable
              as int,
      ord: ord == freezed
          ? _value.ord
          : ord // ignore: cast_nullable_to_non_nullable
              as int,
      mod: mod == freezed
          ? _value.mod
          : mod // ignore: cast_nullable_to_non_nullable
              as int,
      usn: usn == freezed
          ? _value.usn
          : usn // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      queue: queue == freezed
          ? _value.queue
          : queue // ignore: cast_nullable_to_non_nullable
              as int,
      due: due == freezed
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as int,
      ivl: ivl == freezed
          ? _value.ivl
          : ivl // ignore: cast_nullable_to_non_nullable
              as int,
      factor: factor == freezed
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as int,
      reps: reps == freezed
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      lapses: lapses == freezed
          ? _value.lapses
          : lapses // ignore: cast_nullable_to_non_nullable
              as int,
      left: left == freezed
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as int,
      odue: odue == freezed
          ? _value.odue
          : odue // ignore: cast_nullable_to_non_nullable
              as int,
      odid: odid == freezed
          ? _value.odid
          : odid // ignore: cast_nullable_to_non_nullable
              as int,
      flags: flags == freezed
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CardCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$CardCopyWith(_Card value, $Res Function(_Card) then) =
      __$CardCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int nid,
      int did,
      int ord,
      int mod,
      int usn,
      int type,
      int queue,
      int due,
      int ivl,
      int factor,
      int reps,
      int lapses,
      int left,
      int odue,
      int odid,
      int flags,
      String? data});
}

/// @nodoc
class __$CardCopyWithImpl<$Res> extends _$CardCopyWithImpl<$Res>
    implements _$CardCopyWith<$Res> {
  __$CardCopyWithImpl(_Card _value, $Res Function(_Card) _then)
      : super(_value, (v) => _then(v as _Card));

  @override
  _Card get _value => super._value as _Card;

  @override
  $Res call({
    Object? id = freezed,
    Object? nid = freezed,
    Object? did = freezed,
    Object? ord = freezed,
    Object? mod = freezed,
    Object? usn = freezed,
    Object? type = freezed,
    Object? queue = freezed,
    Object? due = freezed,
    Object? ivl = freezed,
    Object? factor = freezed,
    Object? reps = freezed,
    Object? lapses = freezed,
    Object? left = freezed,
    Object? odue = freezed,
    Object? odid = freezed,
    Object? flags = freezed,
    Object? data = freezed,
  }) {
    return _then(_Card(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nid: nid == freezed
          ? _value.nid
          : nid // ignore: cast_nullable_to_non_nullable
              as int,
      did: did == freezed
          ? _value.did
          : did // ignore: cast_nullable_to_non_nullable
              as int,
      ord: ord == freezed
          ? _value.ord
          : ord // ignore: cast_nullable_to_non_nullable
              as int,
      mod: mod == freezed
          ? _value.mod
          : mod // ignore: cast_nullable_to_non_nullable
              as int,
      usn: usn == freezed
          ? _value.usn
          : usn // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      queue: queue == freezed
          ? _value.queue
          : queue // ignore: cast_nullable_to_non_nullable
              as int,
      due: due == freezed
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as int,
      ivl: ivl == freezed
          ? _value.ivl
          : ivl // ignore: cast_nullable_to_non_nullable
              as int,
      factor: factor == freezed
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as int,
      reps: reps == freezed
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
      lapses: lapses == freezed
          ? _value.lapses
          : lapses // ignore: cast_nullable_to_non_nullable
              as int,
      left: left == freezed
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as int,
      odue: odue == freezed
          ? _value.odue
          : odue // ignore: cast_nullable_to_non_nullable
              as int,
      odid: odid == freezed
          ? _value.odid
          : odid // ignore: cast_nullable_to_non_nullable
              as int,
      flags: flags == freezed
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Card implements _Card {
  _$_Card(
      {required this.id,
      required this.nid,
      required this.did,
      this.ord = 0,
      required this.mod,
      this.usn = 0,
      this.type = 0,
      this.queue = 0,
      required this.due,
      this.ivl = 0,
      this.factor = 0,
      this.reps = 0,
      this.lapses = 0,
      this.left = 0,
      this.odue = 0,
      this.odid = 0,
      this.flags = 0,
      this.data});

  @override

  /// the epoch milliseconds of when the card was created
  final int id;
  @override

  /// notes.id
  final int nid;
  @override

  /// deck id (available in col table)
  final int did;
  @JsonKey(defaultValue: 0)
  @override

  /// ordinal : identifies which of the card templates or cloze deletions it corresponds to
  /// for card templates, valid values are from 0 to num templates - 1
  /// for cloze deletions, valid values are from 0 to max cloze index - 1 (they're 0 indexed despite the first being called `c1`)
  final int ord;
  @override

  /// modification time as epoch seconds
  final int mod;
  @JsonKey(defaultValue: 0)
  @override

  /// update sequence number : used to figure out diffs when syncing.
  /// value of -1 indicates changes that need to be pushed to server.
  /// usn < server usn indicates changes that need to be pulled from server.
  final int usn;
  @JsonKey(defaultValue: 0)
  @override

  /// 0=new, 1=learning, 2=review, 3=relearning
  final int type;
  @JsonKey(defaultValue: 0)
  @override

  /// -3=user buried(In scheduler 2),
  /// -2=sched buried (In scheduler 2),
  /// -2=buried(In scheduler 1),
  /// -1=suspended,
  /// 0=new, 1=learning, 2=review (as for type)
  /// 3=in learning, next rev in at least a day after the previous review
  /// 4=preview
  final int queue;
  @override

  /// Due is used differently for different card types:
  /// new: note id or random int
  /// due: integer day, relative to the collection's creation time
  /// learning: integer timestamp in second
  final int due;
  @JsonKey(defaultValue: 0)
  @override

  /// interval (used in SRS algorithm). Negative = seconds, positive = days
  final int ivl;
  @JsonKey(defaultValue: 0)
  @override

  /// The ease factor of the card in permille (parts per thousand). If the ease factor is 2500, the card’s interval will be multiplied by 2.5 the next time you press Good.
  final int factor;
  @JsonKey(defaultValue: 0)
  @override

  /// number of reviews
  final int reps;
  @JsonKey(defaultValue: 0)
  @override

  /// the number of times the card went from a "was answered correctly"
  /// to "was answered incorrectly" state
  final int lapses;
  @JsonKey(defaultValue: 0)
  @override

  /// of the form a*1000+b, with:
  /// b the number of reps left till graduation
  /// a the number of reps left today
  final int left;
  @JsonKey(defaultValue: 0)
  @override

  /// original due: In filtered decks, it's the original due date that the card had before moving to filtered.
  /// If the card lapsed in scheduler1, then it's the value before the lapse. (This is used when switching to scheduler 2. At this time, cards in learning becomes due again, with their previous due date)
  /// In any other case it's 0.
  final int odue;
  @JsonKey(defaultValue: 0)
  @override

  /// original did: only used when the card is currently in filtered deck
  final int odid;
  @JsonKey(defaultValue: 0)
  @override

  /// an integer. This integer mod 8 represents a "flag", which can be see in browser and while reviewing a note. Red 1, Orange 2, Green 3, Blue 4, no flag: 0. This integer divided by 8 represents currently nothing
  final int flags;
  @override

  /// Currently Unused
  final String? data;

  @override
  String toString() {
    return 'Card(id: $id, nid: $nid, did: $did, ord: $ord, mod: $mod, usn: $usn, type: $type, queue: $queue, due: $due, ivl: $ivl, factor: $factor, reps: $reps, lapses: $lapses, left: $left, odue: $odue, odid: $odid, flags: $flags, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Card &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.nid, nid) ||
                const DeepCollectionEquality().equals(other.nid, nid)) &&
            (identical(other.did, did) ||
                const DeepCollectionEquality().equals(other.did, did)) &&
            (identical(other.ord, ord) ||
                const DeepCollectionEquality().equals(other.ord, ord)) &&
            (identical(other.mod, mod) ||
                const DeepCollectionEquality().equals(other.mod, mod)) &&
            (identical(other.usn, usn) ||
                const DeepCollectionEquality().equals(other.usn, usn)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.queue, queue) ||
                const DeepCollectionEquality().equals(other.queue, queue)) &&
            (identical(other.due, due) ||
                const DeepCollectionEquality().equals(other.due, due)) &&
            (identical(other.ivl, ivl) ||
                const DeepCollectionEquality().equals(other.ivl, ivl)) &&
            (identical(other.factor, factor) ||
                const DeepCollectionEquality().equals(other.factor, factor)) &&
            (identical(other.reps, reps) ||
                const DeepCollectionEquality().equals(other.reps, reps)) &&
            (identical(other.lapses, lapses) ||
                const DeepCollectionEquality().equals(other.lapses, lapses)) &&
            (identical(other.left, left) ||
                const DeepCollectionEquality().equals(other.left, left)) &&
            (identical(other.odue, odue) ||
                const DeepCollectionEquality().equals(other.odue, odue)) &&
            (identical(other.odid, odid) ||
                const DeepCollectionEquality().equals(other.odid, odid)) &&
            (identical(other.flags, flags) ||
                const DeepCollectionEquality().equals(other.flags, flags)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(nid) ^
      const DeepCollectionEquality().hash(did) ^
      const DeepCollectionEquality().hash(ord) ^
      const DeepCollectionEquality().hash(mod) ^
      const DeepCollectionEquality().hash(usn) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(queue) ^
      const DeepCollectionEquality().hash(due) ^
      const DeepCollectionEquality().hash(ivl) ^
      const DeepCollectionEquality().hash(factor) ^
      const DeepCollectionEquality().hash(reps) ^
      const DeepCollectionEquality().hash(lapses) ^
      const DeepCollectionEquality().hash(left) ^
      const DeepCollectionEquality().hash(odue) ^
      const DeepCollectionEquality().hash(odid) ^
      const DeepCollectionEquality().hash(flags) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$CardCopyWith<_Card> get copyWith =>
      __$CardCopyWithImpl<_Card>(this, _$identity);
}

abstract class _Card implements Card {
  factory _Card(
      {required int id,
      required int nid,
      required int did,
      int ord,
      required int mod,
      int usn,
      int type,
      int queue,
      required int due,
      int ivl,
      int factor,
      int reps,
      int lapses,
      int left,
      int odue,
      int odid,
      int flags,
      String? data}) = _$_Card;

  @override

  /// the epoch milliseconds of when the card was created
  int get id => throw _privateConstructorUsedError;
  @override

  /// notes.id
  int get nid => throw _privateConstructorUsedError;
  @override

  /// deck id (available in col table)
  int get did => throw _privateConstructorUsedError;
  @override

  /// ordinal : identifies which of the card templates or cloze deletions it corresponds to
  /// for card templates, valid values are from 0 to num templates - 1
  /// for cloze deletions, valid values are from 0 to max cloze index - 1 (they're 0 indexed despite the first being called `c1`)
  int get ord => throw _privateConstructorUsedError;
  @override

  /// modification time as epoch seconds
  int get mod => throw _privateConstructorUsedError;
  @override

  /// update sequence number : used to figure out diffs when syncing.
  /// value of -1 indicates changes that need to be pushed to server.
  /// usn < server usn indicates changes that need to be pulled from server.
  int get usn => throw _privateConstructorUsedError;
  @override

  /// 0=new, 1=learning, 2=review, 3=relearning
  int get type => throw _privateConstructorUsedError;
  @override

  /// -3=user buried(In scheduler 2),
  /// -2=sched buried (In scheduler 2),
  /// -2=buried(In scheduler 1),
  /// -1=suspended,
  /// 0=new, 1=learning, 2=review (as for type)
  /// 3=in learning, next rev in at least a day after the previous review
  /// 4=preview
  int get queue => throw _privateConstructorUsedError;
  @override

  /// Due is used differently for different card types:
  /// new: note id or random int
  /// due: integer day, relative to the collection's creation time
  /// learning: integer timestamp in second
  int get due => throw _privateConstructorUsedError;
  @override

  /// interval (used in SRS algorithm). Negative = seconds, positive = days
  int get ivl => throw _privateConstructorUsedError;
  @override

  /// The ease factor of the card in permille (parts per thousand). If the ease factor is 2500, the card’s interval will be multiplied by 2.5 the next time you press Good.
  int get factor => throw _privateConstructorUsedError;
  @override

  /// number of reviews
  int get reps => throw _privateConstructorUsedError;
  @override

  /// the number of times the card went from a "was answered correctly"
  /// to "was answered incorrectly" state
  int get lapses => throw _privateConstructorUsedError;
  @override

  /// of the form a*1000+b, with:
  /// b the number of reps left till graduation
  /// a the number of reps left today
  int get left => throw _privateConstructorUsedError;
  @override

  /// original due: In filtered decks, it's the original due date that the card had before moving to filtered.
  /// If the card lapsed in scheduler1, then it's the value before the lapse. (This is used when switching to scheduler 2. At this time, cards in learning becomes due again, with their previous due date)
  /// In any other case it's 0.
  int get odue => throw _privateConstructorUsedError;
  @override

  /// original did: only used when the card is currently in filtered deck
  int get odid => throw _privateConstructorUsedError;
  @override

  /// an integer. This integer mod 8 represents a "flag", which can be see in browser and while reviewing a note. Red 1, Orange 2, Green 3, Blue 4, no flag: 0. This integer divided by 8 represents currently nothing
  int get flags => throw _privateConstructorUsedError;
  @override

  /// Currently Unused
  String? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CardCopyWith<_Card> get copyWith => throw _privateConstructorUsedError;
}
