import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({super.key});

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      CollectionModel('assets/images/image_demo_collection/image_collection.png', 'Mustafa         ', '3.14 ETH'),
      CollectionModel('assets/images/image_demo_collection/image_collection.png', 'Mustafa         ', '3.14 ETH'),
      CollectionModel('assets/images/image_demo_collection/image_collection.png', 'Mustafa         ', '3.14 ETH'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _CatagoryCard(item: _items[index]);
        },
      ),
    );
  }
}

class _CatagoryCard extends StatelessWidget {
  const _CatagoryCard({required this.item});

  final CollectionModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(child: Image.asset(item.imagePath)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(item.title), Text(item.price)]),
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final String price;

  CollectionModel(this.imagePath, this.title, this.price);
}
