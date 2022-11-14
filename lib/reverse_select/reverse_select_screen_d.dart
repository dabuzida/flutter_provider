import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'reverse_select_model.dart';

class ReverseSelectScreenD extends StatelessWidget {
  const ReverseSelectScreenD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('watch d');
    return Container(
      width: 70,
      height: 70,
      color: Colors.red.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            // '',
            'num4: ${context.watch<ReverseSelectModel>().number4.toString()}',
          ),
        ],
      ),
    );
  }
}
