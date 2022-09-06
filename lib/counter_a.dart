import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/count.dart';
import 'package:provider/provider.dart';

import 'provider/theme_color.dart';

class CounterA extends StatelessWidget {
  CounterA({Key? key}) : super(key: key);
  final colorList = <Color>[
    ThemeColor().red,
    ThemeColor().yellow,
    ThemeColor().green,
    ThemeColor().blue,
    ThemeColor().purple,
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
            Provider.of<Count>(context).count.toString(), // 자원 소모 큼
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
                  Provider.of<Count>(context, listen: false).decrease();
                },
                child: const Text(
                  '-',
                  style: TextStyle(fontSize: 50),
                ),
              ),
              TextButton(
                onPressed: () {
                  // context.read<Count>().increase();
                  Provider.of<Count>(context, listen: false).increase();
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
