import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'test_select_rebuild_model.dart';
import 'test_select_rebuild_screen_a.dart';
import 'test_select_rebuild_screen_b.dart';

class TestSelectRebuildScreenD extends StatelessWidget {
  const TestSelectRebuildScreenD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('select d');
    return Container(
      width: 400,
      height: 400,
      color: Colors.red.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '',
            // 'num4: ${context.watch<TestSelectRebuildModel>().number4.toString()}',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TestSelectRebuildScreenA(),
              TestSelectRebuildScreenB(),
            ],
          ),
        ],
      ),
    );
  }
}
