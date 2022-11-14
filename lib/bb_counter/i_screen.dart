import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bb_counter_model.dart';
import 'bb_theme_color_model.dart';

class BBScreen extends StatelessWidget {
  BBScreen({Key? key}) : super(key: key);
  final colorList = <Color>[
    BBThemeColorModel().red,
    BBThemeColorModel().yellow,
    BBThemeColorModel().green,
    BBThemeColorModel().blue,
    BBThemeColorModel().purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          const SizedBox(height: 50),
          // Text(context.watch<Count>().count.toString()),
          // const SizedBox(height: 50),
          Text(
            // context.watch<Count>().count.toString(),  //자원소모 적음
            Provider.of<BBCounterModel>(context).count.toString(), // 자원 소모 큼
            // context.select<Count, int>((Count provider) => provider.count).toString(), //자원소모 더적음
            style: const TextStyle(fontSize: 50),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  // context.read<Count>().decrease();
                  Provider.of<BBCounterModel>(context, listen: false).decrease();
                },
                child: const Text(
                  '-',
                  style: TextStyle(fontSize: 50),
                ),
              ),
              TextButton(
                onPressed: () {
                  // context.read<Count>().increase();
                  Provider.of<BBCounterModel>(context, listen: false).increase();
                },
                child: const Text(
                  '+',
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ],
          ),

          // Text(
          //   '$result',
          //   style: Theme.of(context).textTheme.headline4,
          // ),
          // Consumer<CounterViewModel>(
          //     builder: (context, viewModel, child) {
          //       return Text(
          //         '${viewModel.counter}',
          //         style: Theme.of(context).textTheme.headline4,
          //       );
          //     },
          //   ),
        ],
      ),
    );
  }
}
