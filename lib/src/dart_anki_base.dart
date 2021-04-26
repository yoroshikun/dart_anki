import 'dart:io';
import 'package:archive/archive.dart';
import 'package:dart_anki/src/models/card.dart';
import 'package:dart_anki/src/models/media.dart';
import 'package:sqlite3/sqlite3.dart';

/// Initializes a parser given the .apkg file
class AnkiParser {
  final Directory _tempDir = Directory.systemTemp.createTempSync();
  Database? _db;
  final List<Card> _cards = [];

  Media? media;

  List<FileSystemEntity> get files => _tempDir.listSync();
  List<Card> get cards => _cards;
  bool get isAwesome => true;

  AnkiParser(String ankiArchivePath) {
    final apkgFile = File(ankiArchivePath);
    final bytes = apkgFile.readAsBytesSync();
    final archive = ZipDecoder().decodeBytes(bytes);

    for (final file in archive) {
      final filename = file.name;

      if (file.isFile || filename == 'media') {
        final data = file.content as List<int>;
        File(_tempDir.path + '/' + filename)
          ..createSync(recursive: true)
          ..writeAsBytesSync(data);
      } else {
        Directory(_tempDir.path + '/' + filename).create(recursive: true);
      }
    }

    final mediaFile = File(_tempDir.path + '/media');

    if (mediaFile.existsSync()) {
      media = Media(mediaFile);
    } else {
      throw Exception('Media file does not exist');
    }

    _db = sqlite3.open(_tempDir.path + '/collection.anki2');

    final resultSet = _db?.select('SELECT * FROM cards');

    if (resultSet != null) {
      for (final row in resultSet) {
        cards.add(Card(
            row['id'],
            row['nid'],
            row['did'],
            row['ord'],
            row['mod'],
            row['usn'],
            row['type'],
            row['queue'],
            row['due'],
            row['ivl'],
            row['factor'],
            row['reps'],
            row['lapses'],
            row['left'],
            row['odue'],
            row['odid'],
            row['flags'],
            row['data']));
      }
    }
  }

  /// Dispose function to ensure cleanup and dispose of database and temp directory
  void dispose() {
    if (_db != null) {
      _db?.dispose();
    }

    if (_tempDir is Directory) {
      _tempDir.deleteSync(recursive: true);
    }
  }
}
