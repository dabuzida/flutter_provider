import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'ss_counter_model.dart';

class SSRead extends StatelessWidget {
  const SSRead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('read');
    final _read = context.read<SSCounterModel>();
    return Container(
      width: 100,
      height: 100,
      child: Column(
        children: <Widget>[
          Text(_read.number.toString()),
          Text(context.read<SSCounterModel>().number.toString()),
          Text(_read.number2.toString()),
          Text(context.read<SSCounterModel>().number2.toString()),
        ],
      ),
    );
  }
}
