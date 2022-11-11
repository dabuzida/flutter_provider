import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_model.dart';

class CounterScreenII extends StatelessWidget {
  const CounterScreenII({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build');
    // final _read = context.read<CounterModel>();
    // final _watch = context.watch<CounterModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider: Counter"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.teal.shade100,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // _displayNumber(context),
                  // const SizedBox(width: 30),
                  // _displayNumber2(context),
                  // const SizedBox(width: 30),
                  // _displayRest(context),
                  // const SizedBox(width: 30),
                  _displayRead(context),
                  const SizedBox(width: 30),
                  _displayWatch(context),
                  const SizedBox(width: 30),
                  _displaySelect(context),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _displayNumberController(context),
                  const SizedBox(width: 30),
                  _displayNumber2Controller(context),
                  const SizedBox(width: 30),
                  _displayRestController(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _displayNumber(BuildContext context) {
    return Column(
      children: <Widget>[
        // Text(_read.number.toString()),
        // Text(_watch.number.toString()),
        Text(context.watch<CounterModel>().number.toString()),
        Text(context.read<CounterModel>().number.toString()),
        Text(context.select<CounterModel, int>((CounterModel provider) => provider.number).toString()),
      ],
    );
  }

  Widget _displayNumber2(BuildContext context) {
    return Column(
      children: <Widget>[
        // Text(_read.number2.toString()),
        // Text(_watch.number2.toString()),
        Text(context.watch<CounterModel>().number2.toString()),
        Text(context.read<CounterModel>().number2.toString()),
        Text(context.select<CounterModel, int>((CounterModel provider) => provider.number2).toString()),
      ],
    );
  }

  Widget _displayRest(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(context.select<CounterModel, CounterModel>((CounterModel provider) => provider).number2.toString()),
      ],
    );
  }

  Widget _displayRead(BuildContext context) {
    print('read');
    return Column(
      children: <Widget>[
        Text(context.read<CounterModel>().number.toString()),
        Text(context.read<CounterModel>().number2.toString()),
      ],
    );
  }

  Widget _displayWatch(BuildContext context) {
    print('watch');
    return Column(
      children: <Widget>[
        Text(context.watch<CounterModel>().number.toString()),
        Text(context.watch<CounterModel>().number2.toString()),
      ],
    );
  }

  Widget _displaySelect(BuildContext context) {
    print('select');
    return Column(
      children: <Widget>[
        Text(context.select<CounterModel, int>((CounterModel provider) => provider.number).toString()),
        Text(context.select<CounterModel, int>((CounterModel provider) => provider.number2).toString()),
      ],
    );
  }

  Widget _displayNumberController(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.grey.shade300,
          child: Center(child: Text('number')),
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.red.shade100,
          child: TextButton(
            child: const Text(
              '감소',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              context.read<CounterModel>().decrease();
            },
          ),
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.indigo.shade700,
          child: TextButton(
            child: const Text(
              '증가',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              context.read<CounterModel>().increase();
            },
          ),
        ),
      ],
    );
  }

  Widget _displayNumber2Controller(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.grey.shade300,
          child: Center(child: Text('number2')),
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.red.shade100,
          child: TextButton(
            child: const Text(
              '감소',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              context.read<CounterModel>().decrease2();
            },
          ),
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.indigo.shade700,
          child: TextButton(
            child: const Text(
              '증가',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              context.read<CounterModel>().increase2();
            },
          ),
        ),
      ],
    );
  }

  Widget _displayRestController(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.grey.shade300,
          child: Center(child: Text('number\nnumber2')),
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.red.shade100,
          child: TextButton(
            child: const Text(
              '감소',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              context.read<CounterModel>().decreaseAll();
            },
          ),
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.indigo.shade700,
          child: TextButton(
            child: const Text(
              '증가',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              context.read<CounterModel>().increaseAll();
            },
          ),
        ),
      ],
    );
  }
}
