import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_model_2.dart';

class ScreenB extends StatefulWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  State<ScreenB> createState() => _ScreenBState();
}

class _ScreenBState extends State<ScreenB> {
  @override
  Widget build(BuildContext context) {
    CounterModel2 _countProvider = Provider.of<CounterModel2>(context, listen: false);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Consumer<CounterModel2>(
            builder: (context, countProvider, child) => Text(
              // Provider.of<Count>(context).count.toString(),
              // context.watch<Count>().count.toString(),
              context.select<CounterModel2, int>((CounterModel2 provider) => provider.count).toString(),
              style: const TextStyle(fontSize: 60),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () => _countProvider.increase(),
                icon: const Icon(Icons.add),
              ),
              IconButton(
                onPressed: () => _countProvider.decrease(),
                icon: const Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
