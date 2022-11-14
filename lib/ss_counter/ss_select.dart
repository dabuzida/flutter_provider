import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ss_counter_model.dart';

class SSSelct extends StatelessWidget {
  const SSSelct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('select');
    // final _read = context.select<SSCounterModel>();

    return Container(
      width: 100,
      height: 100,
      child: Column(
        children: <Widget>[
          Text(context.select<SSCounterModel, int>((SSCounterModel provider) => provider.number).toString()),
          Text(context.select<SSCounterModel, int>((SSCounterModel provider) => provider.number2).toString()),
          // Text(context.select<SSCounterModel, SSCounterModel>((SSCounterModel provider) => provider).number2.toString()),
        ],
      ),
    );
  }
}
