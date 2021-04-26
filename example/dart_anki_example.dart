import 'package:dart_anki/dart_anki.dart';

void main() {
  var parser = AnkiParser('collection.apkg');

  print('collectionName: ${parser.isAwesome}');
}
