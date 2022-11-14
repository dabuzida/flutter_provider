import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'test_select_rebuild_model.dart';
import 'test_select_rebuild_screen_c.dart';

class TestSelectRebuildScreenB extends StatelessWidget {
  const TestSelectRebuildScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('select b');
    return Container(
      width: 150,
      height: 150,
      color: Colors.yellow.shade300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('num2: ${context.select<TestSelectRebuildModel, int>((TestSelectRebuildModel provider) => provider.number2).toString()}'),
          TestSelectRebuildScreenC(),
        ],
      ),
    );
    ;
  }
}
