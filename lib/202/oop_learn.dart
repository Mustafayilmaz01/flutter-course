import 'package:flutter/widgets.dart';
import 'dart:io';

import 'package:full_learn/202/custom_exception.dart';

class FileDownload {
  bool? downloadItem(FileItem? fileitem) {
    if (fileitem == null) throw FileDownloadException();
    print('a');
  }
}

class FileItem {
  final SafeArea name;
  final File file;
  FileItem(this.name, this.file);
}
