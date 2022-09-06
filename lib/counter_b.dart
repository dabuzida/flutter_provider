import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/count.dart';

class CounterB extends StatefulWidget {
  const CounterB({Key? key}) : super(key: key);

  @override
  State<CounterB> createState() => _CounterBState();
}

class _CounterBState extends State<CounterB> {
  @override
  Widget build(BuildContext context) {
    Count _countProvider = Provider.of<Count>(context, listen: false);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Consumer<Count>(
            builder: (context, countProvider, child) => Text(
              // Provider.of<Count>(context).count.toString(),
              // context.watch<Count>().count.toString(),
              context.select<Count, int>((Count provider) => provider.count).toString(),
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
