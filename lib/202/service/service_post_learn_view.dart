import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:full_learn/202/service/post_model.dart';

class ServicePostLearnView extends StatefulWidget {
  @override
  State<ServicePostLearnView> createState() => _ServicePostLearnViewState();
}

class _ServicePostLearnViewState extends State<ServicePostLearnView> {
  List<PostModel>? _items;
  bool _isLoading = false;
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';
  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
    fetchPostItems();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  void _addItemToService(PostModel postModel) async {
    _changeLoading();
    final response = await _dio.post('posts', data: postModel.toJson()); // düzeltildi
    if (response.statusCode == HttpStatus.created) {
      print('Başarılı'); // düzeltildi
    }
    _changeLoading();
  }

  void fetchPostItems() async {
    _changeLoading();

    final response = await Dio().get(
      'https://jsonplaceholder.typicode.com/posts',
      options: Options(headers: {'Accept': 'application/json', 'User-Agent': 'FlutterApp/1.0'}),
    );

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;
      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }

    _changeLoading();
  }

  void fetchPostItemsAdvance() async {
    _changeLoading();

    final response = await _dio.get(
      'posts',
      options: Options(headers: {'Accept': 'application/json', 'User-Agent': 'FlutterApp/1.0'}),
    );

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;
      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }

    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            textInputAction: TextInputAction.next,
            controller: _titleController,
            decoration: InputDecoration(labelText: 'Title'), // düzeltildi
          ),
          TextField(
            textInputAction: TextInputAction.next,
            controller: _bodyController,
            decoration: InputDecoration(labelText: 'Body'),
          ),
          TextField(
            controller: _userIdController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'UserID'),
          ),
          TextButton(
            onPressed: _isLoading
                ? null
                : () {
                    if (_titleController.text.isNotEmpty &&
                        _bodyController.text.isNotEmpty &&
                        _userIdController.text.isNotEmpty) {
                      final model = PostModel(
                        body: _bodyController.text,
                        title: _titleController.text,
                        userId: int.tryParse(_userIdController.text),
                      );
                      _addItemToService(model); //
                    }
                  },
            child: Text('Send'),
          ),
        ],
      ),
    );
  }
}

class CardComponents extends StatelessWidget {
  const CardComponents({super.key, required PostModel? model}) : _model = model;

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(title: Text(_model?.title ?? 'No Title'), subtitle: Text(_model?.body ?? 'No Body')),
    );
  }
}
