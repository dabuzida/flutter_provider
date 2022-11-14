import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'gg_counter_model.dart';

class GGCounterScreenII extends StatelessWidget {
  const GGCounterScreenII({Key? key}) : super(key: key);

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
                  // _displayWatch(context),
                  const SizedBox(width: 30),
                  // _displaySelect(context),
                  _container(),
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

  Widget _container() {
    print('_container');
    return Container(
      width: 50,
      height: 50,
      color: Colors.red,
    );
  }

  // Widget _displayNumber(BuildContext context) {
  //   return Column(
  //     children: <Widget>[
  //       // Text(_read.number.toString()),
  //       // Text(_watch.number.toString()),
  //       Text(context.watch<GGCounterModel>().number.toString()),
  //       Text(context.read<GGCounterModel>().number.toString()),
  //       Text(context.select<GGCounterModel, int>((GGCounterModel provider) => provider.number).toString()),
  //     ],
  //   );
  // }

  // Widget _displayNumber2(BuildContext context) {
  //   return Column(
  //     children: <Widget>[
  //       // Text(_read.number2.toString()),
  //       // Text(_watch.number2.toString()),
  //       Text(context.watch<GGCounterModel>().number2.toString()),
  //       Text(context.read<GGCounterModel>().number2.toString()),
  //       Text(context.select<GGCounterModel, int>((GGCounterModel provider) => provider.number2).toString()),
  //     ],
  //   );
  // }

  // Widget _displayRest(BuildContext context) {
  //   return Column(
  //     children: <Widget>[
  //       Text(context.select<GGCounterModel, GGCounterModel>((GGCounterModel provider) => provider).number2.toString()),
  //     ],
  //   );
  // }

  Widget _displayRead(BuildContext context) {
    print('read');
    return Column(
      children: <Widget>[
        Text(context.read<GGCounterModel>().number.toString()),
        Text(context.read<GGCounterModel>().number2.toString()),
      ],
    );
  }

  // Widget _displayWatch(BuildContext context) {
  //   print('watch');
  //   return Column(
  //     children: <Widget>[
  //       Text(context.watch<GGCounterModel>().number.toString()),
  //       Text(context.watch<GGCounterModel>().number2.toString()),
  //     ],
  //   );
  // }

  Widget _displaySelect(BuildContext context) {
    print('select');
    return Column(
      children: <Widget>[
        Text(context.select<GGCounterModel, int>((GGCounterModel provider) => provider.number).toString()),
        Text(context.select<GGCounterModel, int>((GGCounterModel provider) => provider.number2).toString()),
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
              context.read<GGCounterModel>().decrease();
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
              context.read<GGCounterModel>().increase();
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
              context.read<GGCounterModel>().decrease2();
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
              context.read<GGCounterModel>().increase2();
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
              context.read<GGCounterModel>().decreaseAll();
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
              context.read<GGCounterModel>().increaseAll();
            },
          ),
        ),
      ],
    );
  }
}
