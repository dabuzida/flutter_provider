import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_model.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _read = context.read<CounterModel>();
    final _watch = context.watch<CounterModel>();
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
              /* Text(
                _read.number.toString(),
                style: const TextStyle(fontSize: 50),
              ), */
              Text(_read.number.toString()),
              Text(_watch.number.toString()),
              Text(context.watch<CounterModel>().number.toString()),
              Text(context.read<CounterModel>().number.toString()),
              Text(context.select<CounterModel, int>((CounterModel provider) => provider.number).toString()),
              SizedBox(height: 10),
              Text(_read.number2.toString()),
              Text(_watch.number2.toString()),
              Text(context.watch<CounterModel>().number2.toString()),
              Text(context.read<CounterModel>().number2.toString()),
              Text(context.select<CounterModel, int>((CounterModel provider) => provider.number2).toString()),
              SizedBox(height: 10),
              Text(context.select<CounterModel, CounterModel>((CounterModel provider) => provider).number2.toString()),
              const SizedBox(height: 50),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 100,
                        color: Colors.grey.shade300,
                        child: Center(child: Text('number >>')),
                      ),
                      Container(
                        width: 200,
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
                        width: 200,
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 100,
                        color: Colors.grey.shade300,
                        child: Center(child: Text('number2 >>')),
                      ),
                      Container(
                        width: 200,
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
                        width: 200,
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 100,
                        color: Colors.grey.shade300,
                        child: Center(child: Text('number, number2 >>')),
                      ),
                      Container(
                        width: 200,
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
                        width: 200,
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
