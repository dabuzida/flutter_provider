import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_provider/counter2/theme_color_model.dart';

import 'screen_a.dart';
import 'screen_b.dart';

class CounterScreen2 extends StatelessWidget {
  CounterScreen2({Key? key}) : super(key: key);
  final colorList = <Color>[
    ThemeColorModel().red,
    ThemeColorModel().yellow,
    ThemeColorModel().green,
    ThemeColorModel().blue,
    ThemeColorModel().purple,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider: Counter2"),
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      backgroundColor: context.select<ThemeColorModel, Color>((ThemeColorModel provider) => provider.color),
      // backgroundColor: context.select( (ThemeColor provider){return provider.color;}),
      persistentFooterButtons: colorList
          .map<Widget>(
            (color) => GestureDetector(
              onTap: () {
                context.read<ThemeColorModel>().changeColor(color);
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
              child: ScreenA(),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.red, width: 11)),
              height: double.infinity,
              child: const ScreenB(),
            ),
          ),
        ],
      ),
    );
  }
}
