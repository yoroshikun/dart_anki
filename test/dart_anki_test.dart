import 'package:dart_anki/dart_anki.dart';
import 'package:test/test.dart';

void main() {
  group('Basic reading tests', () {
    late AnkiParser parser;

    setUp(() {
      parser = AnkiParser('test/japanese_basic_hiragana.apkg');
    });

    test('Test is awesome', () {
      expect(parser.isAwesome, isTrue);
    });

    test('Test files extracted', () {
      expect(parser.files.length, equals(48));
    });

    test('Test media files exist', () {
      expect(parser.media?.resources.keys.length, equals(46));
      expect(parser.media?.resources.entries.length, equals(46));
    });

    test('Test cards read', () {
      expect(parser.cards.length, equals(46));
      expect(parser.cards.first.id, equals(1296169988801));
    });

    tearDown(() {
      parser.dispose();
    });
  });
}
