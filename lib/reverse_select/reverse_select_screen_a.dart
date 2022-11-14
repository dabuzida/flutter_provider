import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'reverse_select_model.dart';

class ReverseSelectScreenA extends StatelessWidget {
  const ReverseSelectScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('select a');
    return Container(
      width: 200,
      height: 200,
      color: Colors.blue.shade300,
      child: Text('num: ${context.select<ReverseSelectModel, int>((ReverseSelectModel provider) => provider.number).toString()}'),
    );
  }
}
