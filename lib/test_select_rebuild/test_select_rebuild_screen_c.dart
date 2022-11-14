import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'test_select_rebuild_model.dart';

class TestSelectRebuildScreenC extends StatelessWidget {
  const TestSelectRebuildScreenC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('select c');
    return Container(
      width: 100,
      height: 100,
      color: Colors.purple.shade400,
      child: Text('num3:${context.select<TestSelectRebuildModel, int>((TestSelectRebuildModel provider) => provider.number3).toString()}'),
    );
  }
}
