import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          FittedBox(child: Text('Merhaba', style: Theme.of(context).textTheme.headlineSmall, maxLines: 1)),
          Container(color: Colors.red, height: 300),
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
          Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(color: Colors.green, width: 100),
                Container(color: Colors.purple, width: 100),
                Container(color: Colors.white, width: 100),
                Container(color: Colors.black, width: 100),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
        ],
      ),
    );
  }
}
