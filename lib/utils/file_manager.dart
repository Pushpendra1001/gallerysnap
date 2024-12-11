import 'dart:io';
import 'package:path_provider/path_provider.dart';

class FileManager {
  Future<File> saveImage(File file) async {
    final directory = await getApplicationDocumentsDirectory();
    final path = directory.path;
    final newFile = File('$path/${DateTime.now().millisecondsSinceEpoch}.png');
    return file.copy(newFile.path);
  }
}