import 'package:flutter/material.dart';
import 'package:full_learn/202/oop_learn.dart';

class OopLearnView extends StatefulWidget {
  @override
  State<OopLearnView> createState() => _OopLearnViewState();
}

class _OopLearnViewState extends State<OopLearnView> {
  FileDownload? download;

  @override
  void initState() {
    super.initState();
    download = FileDownload();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [CircularProgressIndicator()]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          download?.downloadItem(null);
        },
      ),
    );
  }
}
