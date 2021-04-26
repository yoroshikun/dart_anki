import 'dart:convert';
import 'dart:io';

class Media {
  Map<String, dynamic> resources = {};

  Media(File file) {
    final temp = file.readAsStringSync();
    resources = jsonDecode(temp);
  }
}
