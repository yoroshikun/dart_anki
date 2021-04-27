import 'package:dart_anki/dart_anki.dart';

void main() {
  var instance = AnkiInstance('collection.apkg');

  print('firstCardInDeck: ${instance.cards[0].id}');
}
