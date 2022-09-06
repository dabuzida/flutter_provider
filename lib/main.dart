import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_provider/provider/count.dart';
import 'package:flutter_provider/provider/theme_color.dart';

import 'provider/count.dart';
import 'counter_b.dart';
import 'counter_a.dart';
// import 'provider/theme_color.dart';

void main() => runApp(
      MultiProvider(
        providers: <ChangeNotifierProvider<ChangeNotifier>>[
          ChangeNotifierProvider<Count>(create: (_) => Count()),
          ChangeNotifierProvider<ThemeColor>(create: (_) => ThemeColor()),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final colorList = <Color>[
    ThemeColor().red,
    ThemeColor().yellow,
    ThemeColor().green,
    ThemeColor().blue,
    ThemeColor().purple,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Provider'),
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        backgroundColor: context.select<ThemeColor, Color>((ThemeColor provider) => provider.color),
        persistentFooterButtons: colorList
            .map<Widget>(
              (color) => GestureDetector(
                onTap: () {
                  context.read<ThemeColor>().changeColor(color);
                  // Provider.of<ThemeColor>(context, listen: false).changeColor(color);
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: color),
                ),
              ),
            )
            .toList(),
        body: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 11)),
                height: double.infinity,
                child: CounterA(),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.red, width: 11)),
                height: double.infinity,
                child: const CounterB(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
