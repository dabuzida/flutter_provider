import 'package:flutter/material.dart';
import 'package:flutter_provider/test_select_rebuild/test_select_rebuild_model.dart';
import 'package:provider/provider.dart';

class TestSelectRebuildScreenA extends StatelessWidget {
  const TestSelectRebuildScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('select a');
    return Container(
      width: 200,
      height: 200,
      color: Colors.blue.shade300,
      child: Text('num: ${context.select<TestSelectRebuildModel, int>((TestSelectRebuildModel provider) => provider.number).toString()}'),
    );
  }
}
