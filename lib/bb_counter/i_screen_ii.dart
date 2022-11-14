import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bb_counter_model.dart';

class BBScreenII extends StatefulWidget {
  const BBScreenII({Key? key}) : super(key: key);

  @override
  State<BBScreenII> createState() => _BBScreenIIState();
}

class _BBScreenIIState extends State<BBScreenII> {
  @override
  Widget build(BuildContext context) {
    BBCounterModel _countProvider = Provider.of<BBCounterModel>(context, listen: false);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Consumer<BBCounterModel>(
            builder: (context, countProvider, child) => Text(
              // Provider.of<Count>(context).count.toString(),
              // context.watch<Count>().count.toString(),
              context.select<BBCounterModel, int>((BBCounterModel provider) => provider.count).toString(),
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
