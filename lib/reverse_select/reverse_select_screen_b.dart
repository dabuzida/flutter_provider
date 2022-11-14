import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'reverse_select_model.dart';
import 'reverse_select_screen_c.dart';

class ReverseSelectScreenB extends StatelessWidget {
  const ReverseSelectScreenB({Key? key}) : super(key: key);

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
          Text('num2: ${context.select<ReverseSelectModel, int>((ReverseSelectModel provider) => provider.number2).toString()}'),
          ReverseSelectScreenC(),
        ],
      ),
    );
    ;
  }
}
