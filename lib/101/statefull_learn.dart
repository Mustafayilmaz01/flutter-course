import 'package:flutter/material.dart';
import 'package:full_learn/product/counter_hello_button.dart';
import 'package:full_learn/product/language/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key, required String message});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int countValue = 0;

  //void incrementValue(){
  //setState(() {
  //    countValue = countValue+1;
  //});

  //}

  //void deincrementValue() {

  //}
  void updateCounter(bool isIncrement) {
    if (isIncrement) {
      countValue = countValue + 1;
    } else {
      countValue = countValue - 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LanguageItems.welcomeTitle)),
      floatingActionButton: Row(mainAxisSize: MainAxisSize.min, children: [_incrementButton(), _deincrementButton()]),
      body: Column(
        children: [
          Center(child: Text(countValue.toString(), style: Theme.of(context).textTheme.headlineLarge)),
          const Placeholder(fallbackHeight: 10, strokeWidth: 10),
          const CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() => FloatingActionButton(
    onPressed: () {
      updateCounter(true);
    },
    child: const Icon(Icons.add),
  );

  Padding _deincrementButton() {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
