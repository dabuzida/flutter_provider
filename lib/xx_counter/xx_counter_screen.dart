import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'xx_counter_model.dart';
import 'xx_watch_read_select.dart';

class XXCounterScreen extends StatefulWidget {
  const XXCounterScreen({Key? key}) : super(key: key);

  @override
  State<XXCounterScreen> createState() => _SSCounterScreenState();
}

class _SSCounterScreenState extends State<XXCounterScreen> {
  @override
  Widget build(BuildContext context) {
    context.watch<XXCounterModel>().number3 = 3;
    int as = context.watch<XXCounterModel>().number33;

    context.read<XXCounterModel>().number3 = 343;
    int xz = context.read<XXCounterModel>().number33;
    print(as);
    print(xz);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider: XX Counter"),
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
                  XXWatchReadSelect(),
                  // XXRead(),
                  // XXSelct(),
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
                            context.read<XXCounterModel>().decrease();
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
                            context.read<XXCounterModel>().increase();
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
                            context.read<XXCounterModel>().decrease2();
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
                            context.read<XXCounterModel>().increase2();
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
                            context.read<XXCounterModel>().decreaseAll();
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
                            context.read<XXCounterModel>().increaseAll();
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
