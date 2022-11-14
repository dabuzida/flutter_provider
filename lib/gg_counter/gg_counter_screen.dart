import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'gg_counter_model.dart';

class GGCounterScreen extends StatelessWidget {
  const GGCounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _read = context.read<GGCounterModel>();
    final _watch = context.watch<GGCounterModel>();
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
              Text(context.watch<GGCounterModel>().number.toString()),
              Text(context.read<GGCounterModel>().number.toString()),
              Text(context.select<GGCounterModel, int>((GGCounterModel provider) => provider.number).toString()),
              SizedBox(height: 10),
              Text(_read.number2.toString()),
              Text(_watch.number2.toString()),
              Text(context.watch<GGCounterModel>().number2.toString()),
              Text(context.read<GGCounterModel>().number2.toString()),
              Text(context.select<GGCounterModel, int>((GGCounterModel provider) => provider.number2).toString()),
              SizedBox(height: 10),
              Text(context.select<GGCounterModel, GGCounterModel>((GGCounterModel provider) => provider).number2.toString()),
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
                            context.read<GGCounterModel>().decrease();
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
                            context.read<GGCounterModel>().increase();
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
                            context.read<GGCounterModel>().decrease2();
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
                            context.read<GGCounterModel>().increase2();
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
                            context.read<GGCounterModel>().decreaseAll();
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
                            context.read<GGCounterModel>().increaseAll();
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
