A library for working with .apkg (Anki) archives

## Requirements

Due to anki's database using sqlite you must ensure sqlite is installed for the device you are developing for.


- IOS & Android: [sqlite3_flutter_libs][sqlite3_flutter_libs_pub] provides sqlite3 libs for iOS and Android
- MacOS: comes pre installed with sqlite3 libs
- Linux: Ensure that you have installed sqlite3 (If requested the lib can be distributed inside this lib)
- Windows: Unknown

## Usage

A simple usage example:

```dart
import 'package:dart_anki/dart_anki.dart';

main() {
  var instance = new AnkiParser();
}
```


## Special thanks

- [freezed][freezed_url]: For code generation for data classes
- [ankidroid_wiki][anki_wiki_url]: For indepth analysis of the .apkg archive and .anki2

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/yoroshikun/dart_anki/issues
[sqlite3_flutter_libs_pub]: https://pub.dev/packages/sqlite3_flutter_libs
[freezed_url]: https://pub.dev/packages/freezed
[anki_wiki_url]: https://github.com/ankidroid/Anki-Android/wiki/Database-Structure