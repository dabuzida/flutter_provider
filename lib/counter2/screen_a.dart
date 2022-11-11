import 'package:flutter/material.dart';
import 'package:flutter_provider/counter2/counter_model_2.dart';
import 'package:provider/provider.dart';

import 'theme_color_model.dart';

class ScreenA extends StatelessWidget {
  ScreenA({Key? key}) : super(key: key);
  final colorList = <Color>[
    ThemeColorModel().red,
    ThemeColorModel().yellow,
    ThemeColorModel().green,
    ThemeColorModel().blue,
    ThemeColorModel().purple,
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
            Provider.of<CounterModel2>(context).count.toString(), // 자원 소모 큼
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
                  Provider.of<CounterModel2>(context, listen: false).decrease();
                },
                child: const Text(
                  '-',
                  style: TextStyle(fontSize: 50),
                ),
              ),
              TextButton(
                onPressed: () {
                  // context.read<Count>().increase();
                  Provider.of<CounterModel2>(context, listen: false).increase();
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
