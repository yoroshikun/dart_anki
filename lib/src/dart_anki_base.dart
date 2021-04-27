import 'dart:io';
import 'package:dart_anki/src/helpers/new_anki_archive.dart';
import 'package:dart_anki/src/helpers/parse_anki_archive.dart';
import 'package:dart_anki/src/models/anki_archive.dart';
import 'package:dart_anki/src/models/card.dart';
import 'package:dart_anki/src/models/resource.dart';

/// Initializes a instance
class AnkiInstance {
  /// Private variable for interaction with the [AnkiArchive] in memory
  late AnkiArchive _archive;

  /// Contains the path to the AnkiArchive for saving and deletion of it entirely
  late String path;

  List<FileSystemEntity> get files => _archive.tempDir.listSync();
  List<Card> get cards => _archive.cards;
  List<Resource> get resources => _archive.resources;

  AnkiInstance(String ankiArchivePath, {create = false}) {
    path = ankiArchivePath;
    // If file is given init with that
    if (create) {
      _archive = new_anki_archive();
    } else {
      _archive = parse_anki_archive(ankiArchivePath);
    }
  }

  /// Dispose function to ensure cleanup and dispose of database and temp directory
  void dispose() {
    _archive.db.dispose();

    _archive.tempDir.deleteSync(recursive: true);
  }
}
