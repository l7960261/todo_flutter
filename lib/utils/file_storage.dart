import 'dart:async';
import 'dart:convert';
import 'dart:io';

class FileStorage {
  const FileStorage(this.tag, this.getDirectory);

  final String tag;
  final Future<Directory> Function() getDirectory;

  Future<File> _getLocalFile() async {
    final dir = await getDirectory();

    return File('${dir.path}/todo_flutter_storage_$tag.json');
  }

  Future<dynamic> load() async {
    final file = await _getLocalFile();
    final contents = await file.readAsString();

    return contents;
  }

  Future<File> save(String data) async {
    final file = await _getLocalFile();

    return file.writeAsString(data);
  }

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

  Future<FileSystemEntity> clean() async {
    final file = await _getLocalFile();

    return file.delete();
  }

  Future<bool> exists() async {
    final file = await _getLocalFile();

    return file.existsSync();
  }
}
