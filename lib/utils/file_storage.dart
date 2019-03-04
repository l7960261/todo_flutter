import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class FileStorage {
  final String tag;
  final Future<Directory> Function() getDirectory;

  const FileStorage(this.tag,
      [this.getDirectory = getApplicationDocumentsDirectory]);

  Future<Map<String, dynamic>> read() async {
    final file = await _getLocalFile();

    try {
      final contents = await file.readAsString();
      final json = JsonDecoder().convert(contents);
      return json;
    } catch (e) {
      final empty = Map<String, dynamic>();
      write(empty);
      return empty;
    }
  }

  Future<File> write(Map<String, dynamic> object) async {
    final file = await _getLocalFile();

    return file.writeAsString(JsonEncoder().convert(object));
  }

  Future<File> _getLocalFile() async {
    final dir = await getDirectory();

    return File('${dir.path}/todo_flutter_storage_$tag.json');
  }

  Future<FileSystemEntity> clean() async {
    final file = await _getLocalFile();

    return file.delete();
  }
}
