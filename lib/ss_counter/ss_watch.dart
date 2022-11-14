import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import 'ss_counter_model.dart';

class SSWatch extends StatelessWidget {
  const SSWatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('watch');
    final _watch = context.watch<SSCounterModel>();
    return Container(
      width: 100,
      height: 100,
      child: Column(
        children: <Widget>[
          Text(_watch.number.toString()),
          Text(context.watch<SSCounterModel>().number.toString()),
          Text(_watch.number2.toString()),
          Text(context.watch<SSCounterModel>().number2.toString()),
        ],
      ),
    );
  }
}
