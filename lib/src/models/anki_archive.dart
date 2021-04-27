import 'dart:io';

import 'package:dart_anki/src/models/card.dart';
import 'package:dart_anki/src/models/resource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlite3/sqlite3.dart';

part 'anki_archive.freezed.dart';

@freezed
class AnkiArchive with _$AnkiArchive {
  factory AnkiArchive({
    /// Temporary directory
    required Directory tempDir,

    /// Database instance for interaction with the database
    required Database db,

    /// List of ankiCards parsed for reading in dart
    required List<Card> cards,

    /// List of resources
    required List<Resource> resources,
  }) = _AnkiArchive;
}
