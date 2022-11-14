import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'reverse_select_model.dart';
import 'reverse_select_screen_d.dart';

class ReverseSelectScreenC extends StatelessWidget {
  const ReverseSelectScreenC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('select c');
    return Container(
      width: 100,
      height: 100,
      color: Colors.purple.shade400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('num3:${context.select<ReverseSelectModel, int>((ReverseSelectModel provider) => provider.number3).toString()}'),
          ReverseSelectScreenD(),
        ],
      ),
    );
  }
}
