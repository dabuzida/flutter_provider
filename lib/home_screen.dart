import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';
import 'my_provider.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final colorList = <Color>[
    ThemeColor().red,
    ThemeColor().yellow,
    ThemeColor().green,
    ThemeColor().blue,
    ThemeColor().purple,
  ];
  final String? title;

  @override
  Widget build(BuildContext context) {
    CounterViewModel result = Provider.of<CounterViewModel>(context);
    return Scaffold(
      persistentFooterButtons: colorList
          .map<Widget>(
            (color) => GestureDetector(
              onTap: () {
                context.read<ThemeColor>().changeColor(color);
              },
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(shape: BoxShape.circle, color: color),
              ),
            ),
          )
          .toList(),
      appBar: AppBar(
        title: Text(this.title!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            // Text(
            //   '$result',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
            /* Consumer<CounterViewModel>(
              builder: (context, viewModel, child) {
                return Text(
                  '${viewModel.counter}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ), */
          ],
        ),
      ),
      /* floatingActionButton: FloatingActionButton(
        onPressed: Provider.of<CounterViewModel>(context, listen: false).incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), */
    );
  }
}
