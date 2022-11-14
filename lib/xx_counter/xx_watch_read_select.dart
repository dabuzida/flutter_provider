import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'xx_counter_model.dart';

class XXWatchReadSelect extends StatelessWidget {
  const XXWatchReadSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        XXWatch(),
        XXRead(),
        XXSelct(),
      ],
    );
  }
}

class XXWatch extends StatelessWidget {
  const XXWatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('watch');
    final _watch = context.watch<XXCounterModel>();
    return Container(
      width: 100,
      height: 100,
      child: Column(
        children: <Widget>[
          Text(_watch.number.toString()),
          Text(context.watch<XXCounterModel>().number.toString()),
          Text(_watch.number2.toString()),
          Text(context.watch<XXCounterModel>().number2.toString()),
        ],
      ),
    );
  }
}

class XXRead extends StatelessWidget {
  const XXRead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('read');
    final _read = context.read<XXCounterModel>();
    return Container(
      width: 100,
      height: 100,
      child: Column(
        children: <Widget>[
          Text(_read.number.toString()),
          Text(context.read<XXCounterModel>().number.toString()),
          Text(_read.number2.toString()),
          Text(context.read<XXCounterModel>().number2.toString()),
        ],
      ),
    );
  }
}

class XXSelct extends StatelessWidget {
  const XXSelct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('select');
    // final _read = context.select<SSCounterModel>();

    return Container(
      width: 100,
      height: 100,
      child: Column(
        children: <Widget>[
          Text(context.select<XXCounterModel, int>((XXCounterModel provider) => provider.number).toString()),
          Text(context.select<XXCounterModel, int>((XXCounterModel provider) => provider.number2).toString()),
          // Text(context.select<SSCounterModel, SSCounterModel>((SSCounterModel provider) => provider).number2.toString()),
        ],
      ),
    );
  }
}
