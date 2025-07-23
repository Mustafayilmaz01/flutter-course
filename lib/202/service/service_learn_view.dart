import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:full_learn/202/service/post_model.dart';

class ServiceLearnView extends StatefulWidget {
  @override
  State<ServiceLearnView> createState() => _ServiceLearnViewState();
}

class _ServiceLearnViewState extends State<ServiceLearnView> {
  List<PostModel>? _items;
  bool _isLoading = false;
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';

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
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return CardComponents(model: _items?[index]);
        },
      ),
    );
  }
}

// 🔧 Sınıf ismini Dart stiline uygun olarak büyük harfle başlatmak best practice'tir
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
