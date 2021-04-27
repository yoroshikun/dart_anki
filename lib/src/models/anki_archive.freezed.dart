// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'anki_archive.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AnkiArchiveTearOff {
  const _$AnkiArchiveTearOff();

  _AnkiArchive call(
      {required Directory tempDir,
      required Database db,
      required List<Card> cards,
      required List<Resource> resources}) {
    return _AnkiArchive(
      tempDir: tempDir,
      db: db,
      cards: cards,
      resources: resources,
    );
  }
}

/// @nodoc
const $AnkiArchive = _$AnkiArchiveTearOff();

/// @nodoc
mixin _$AnkiArchive {
  /// Temporary directory
  Directory get tempDir => throw _privateConstructorUsedError;

  /// Database instance for interaction with the database
  Database get db => throw _privateConstructorUsedError;

  /// List of ankiCards parsed for reading in dart
  List<Card> get cards => throw _privateConstructorUsedError;

  /// List of resources
  List<Resource> get resources => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnkiArchiveCopyWith<AnkiArchive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnkiArchiveCopyWith<$Res> {
  factory $AnkiArchiveCopyWith(
          AnkiArchive value, $Res Function(AnkiArchive) then) =
      _$AnkiArchiveCopyWithImpl<$Res>;
  $Res call(
      {Directory tempDir,
      Database db,
      List<Card> cards,
      List<Resource> resources});
}

/// @nodoc
class _$AnkiArchiveCopyWithImpl<$Res> implements $AnkiArchiveCopyWith<$Res> {
  _$AnkiArchiveCopyWithImpl(this._value, this._then);

  final AnkiArchive _value;
  // ignore: unused_field
  final $Res Function(AnkiArchive) _then;

  @override
  $Res call({
    Object? tempDir = freezed,
    Object? db = freezed,
    Object? cards = freezed,
    Object? resources = freezed,
  }) {
    return _then(_value.copyWith(
      tempDir: tempDir == freezed
          ? _value.tempDir
          : tempDir // ignore: cast_nullable_to_non_nullable
              as Directory,
      db: db == freezed
          ? _value.db
          : db // ignore: cast_nullable_to_non_nullable
              as Database,
      cards: cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<Card>,
      resources: resources == freezed
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<Resource>,
    ));
  }
}

/// @nodoc
abstract class _$AnkiArchiveCopyWith<$Res>
    implements $AnkiArchiveCopyWith<$Res> {
  factory _$AnkiArchiveCopyWith(
          _AnkiArchive value, $Res Function(_AnkiArchive) then) =
      __$AnkiArchiveCopyWithImpl<$Res>;
  @override
  $Res call(
      {Directory tempDir,
      Database db,
      List<Card> cards,
      List<Resource> resources});
}

/// @nodoc
class __$AnkiArchiveCopyWithImpl<$Res> extends _$AnkiArchiveCopyWithImpl<$Res>
    implements _$AnkiArchiveCopyWith<$Res> {
  __$AnkiArchiveCopyWithImpl(
      _AnkiArchive _value, $Res Function(_AnkiArchive) _then)
      : super(_value, (v) => _then(v as _AnkiArchive));

  @override
  _AnkiArchive get _value => super._value as _AnkiArchive;

  @override
  $Res call({
    Object? tempDir = freezed,
    Object? db = freezed,
    Object? cards = freezed,
    Object? resources = freezed,
  }) {
    return _then(_AnkiArchive(
      tempDir: tempDir == freezed
          ? _value.tempDir
          : tempDir // ignore: cast_nullable_to_non_nullable
              as Directory,
      db: db == freezed
          ? _value.db
          : db // ignore: cast_nullable_to_non_nullable
              as Database,
      cards: cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<Card>,
      resources: resources == freezed
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<Resource>,
    ));
  }
}

/// @nodoc

class _$_AnkiArchive implements _AnkiArchive {
  _$_AnkiArchive(
      {required this.tempDir,
      required this.db,
      required this.cards,
      required this.resources});

  @override

  /// Temporary directory
  final Directory tempDir;
  @override

  /// Database instance for interaction with the database
  final Database db;
  @override

  /// List of ankiCards parsed for reading in dart
  final List<Card> cards;
  @override

  /// List of resources
  final List<Resource> resources;

  @override
  String toString() {
    return 'AnkiArchive(tempDir: $tempDir, db: $db, cards: $cards, resources: $resources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnkiArchive &&
            (identical(other.tempDir, tempDir) ||
                const DeepCollectionEquality()
                    .equals(other.tempDir, tempDir)) &&
            (identical(other.db, db) ||
                const DeepCollectionEquality().equals(other.db, db)) &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality()
                    .equals(other.resources, resources)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tempDir) ^
      const DeepCollectionEquality().hash(db) ^
      const DeepCollectionEquality().hash(cards) ^
      const DeepCollectionEquality().hash(resources);

  @JsonKey(ignore: true)
  @override
  _$AnkiArchiveCopyWith<_AnkiArchive> get copyWith =>
      __$AnkiArchiveCopyWithImpl<_AnkiArchive>(this, _$identity);
}

abstract class _AnkiArchive implements AnkiArchive {
  factory _AnkiArchive(
      {required Directory tempDir,
      required Database db,
      required List<Card> cards,
      required List<Resource> resources}) = _$_AnkiArchive;

  @override

  /// Temporary directory
  Directory get tempDir => throw _privateConstructorUsedError;
  @override

  /// Database instance for interaction with the database
  Database get db => throw _privateConstructorUsedError;
  @override

  /// List of ankiCards parsed for reading in dart
  List<Card> get cards => throw _privateConstructorUsedError;
  @override

  /// List of resources
  List<Resource> get resources => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AnkiArchiveCopyWith<_AnkiArchive> get copyWith =>
      throw _privateConstructorUsedError;
}
