import 'package:flutter/material.dart';
import 'package:flutter_provider/ss_counter/ss_read.dart';
import 'package:flutter_provider/ss_counter/ss_select.dart';
import 'package:flutter_provider/ss_counter/ss_watch.dart';
import 'package:provider/provider.dart';

import 'ss_counter_model.dart';

class SSCounterScreen extends StatefulWidget {
  const SSCounterScreen({Key? key}) : super(key: key);

  @override
  State<SSCounterScreen> createState() => _SSCounterScreenState();
}

class _SSCounterScreenState extends State<SSCounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider: SS Counter"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.teal.shade100,
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 100),
              Container(
                color: Colors.yellow,
                child: TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    'set state',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SSWatch(),
                  SSRead(),
                  SSSelct(),
                ],
              ),
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
                        width: 100,
                        height: 100,
                        color: Colors.red.shade100,
                        child: TextButton(
                          child: const Text(
                            '감소',
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            context.read<SSCounterModel>().decrease();
                          },
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.indigo.shade700,
                        child: TextButton(
                          child: const Text(
                            '증가',
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            context.read<SSCounterModel>().increase();
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
                        width: 100,
                        height: 100,
                        color: Colors.red.shade100,
                        child: TextButton(
                          child: const Text(
                            '감소',
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            context.read<SSCounterModel>().decrease2();
                          },
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.indigo.shade700,
                        child: TextButton(
                          child: const Text(
                            '증가',
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            context.read<SSCounterModel>().increase2();
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
                        width: 100,
                        height: 100,
                        color: Colors.red.shade100,
                        child: TextButton(
                          child: const Text(
                            '감소',
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            context.read<SSCounterModel>().decreaseAll();
                          },
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.indigo.shade700,
                        child: TextButton(
                          child: const Text(
                            '증가',
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            context.read<SSCounterModel>().increaseAll();
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
