import 'dart:convert';
import 'dart:io';

import 'package:archive/archive.dart';
import 'package:dart_anki/src/models/anki_archive.dart';
import 'package:dart_anki/src/models/card.dart';
import 'package:dart_anki/src/models/resource.dart';
import 'package:sqlite3/sqlite3.dart';

AnkiArchive parse_anki_archive(String ankiArchivePath) {
  final tempDir = Directory.systemTemp.createTempSync();
  final apkgFile = File(ankiArchivePath);
  final bytes = apkgFile.readAsBytesSync();
  final archive = ZipDecoder().decodeBytes(bytes);

  for (final file in archive) {
    final filename = file.name;

    if (file.isFile || filename == 'media') {
      final data = file.content as List<int>;
      File(tempDir.path + '/' + filename)
        ..createSync(recursive: true)
        ..writeAsBytesSync(data);
    } else {
      Directory(tempDir.path + '/' + filename).create(recursive: true);
    }
  }

  final mediaFile = File(tempDir.path + '/media');
  final resources = <Resource>[];

  if (mediaFile.existsSync()) {
    final jsonString = mediaFile.readAsStringSync();
    final Map<String, String> mappedResources =
        Map.castFrom(jsonDecode(jsonString));

    mappedResources.forEach((key, value) {
      resources.add(Resource(fileName: int.parse(key), resourceName: value));
    });
  }

  final db = sqlite3.open(tempDir.path + '/collection.anki2');
  final cards = <Card>[];

  final resultSet = db.select('SELECT * FROM cards');

  for (final row in resultSet) {
    cards.add(Card(
        id: row['id'],
        nid: row['nid'],
        did: row['did'],
        ord: row['ord'],
        mod: row['mod'],
        usn: row['usn'],
        type: row['type'],
        queue: row['queue'],
        due: row['due'],
        ivl: row['ivl'],
        factor: row['factor'],
        reps: row['reps'],
        lapses: row['lapses'],
        left: row['left'],
        odue: row['odue'],
        odid: row['odid'],
        flags: row['flags'],
        data: row['data']));
  }

  return AnkiArchive(
      tempDir: tempDir, db: db, cards: cards, resources: resources);
}
