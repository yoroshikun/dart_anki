import 'package:dart_anki/dart_anki.dart';
import 'package:test/test.dart';

void main() {
  group('Basic reading tests', () {
    late AnkiInstance instance;

    setUp(() {
      instance = AnkiInstance('test/japanese_basic_hiragana.apkg');
    });

    test('Test files extracted', () {
      expect(instance.files.length, equals(48));
    });

    test('Test media files exist', () {
      expect(instance.resources.length, equals(46));
    });

    test('Test cards read', () {
      expect(instance.cards.length, equals(46));
      expect(instance.cards.first.id, equals(1296169988801));
    });

    tearDown(() {
      instance.dispose();
    });
  });

  // Todo: add creation tests
  group('Basic creation tests', () {});
}
