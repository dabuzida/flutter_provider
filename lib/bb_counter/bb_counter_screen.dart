import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'i_screen.dart';
import 'i_screen_ii.dart';
import 'theme_color_model.dart';

class BBCounterScreen extends StatelessWidget {
  BBCounterScreen({Key? key}) : super(key: key);
  final colorList = <Color>[
    BBThemeColorModel().red,
    BBThemeColorModel().yellow,
    BBThemeColorModel().green,
    BBThemeColorModel().blue,
    BBThemeColorModel().purple,
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
      backgroundColor: context.select<BBThemeColorModel, Color>((BBThemeColorModel provider) => provider.color),
      // backgroundColor: context.select( (ThemeColor provider){return provider.color;}),
      persistentFooterButtons: colorList
          .map<Widget>(
            (color) => GestureDetector(
              onTap: () {
                context.read<BBThemeColorModel>().changeColor(color);
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
              child: BBScreen(),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.red, width: 11)),
              height: double.infinity,
              child: const BBScreenII(),
            ),
          ),
        ],
      ),
    );
  }
}
