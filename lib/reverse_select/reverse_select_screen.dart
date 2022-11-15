import 'package:flutter/material.dart';
import 'package:flutter_provider/reverse_select/reverse_select_model.dart';
import 'package:flutter_provider/reverse_select/reverse_select_screen_a.dart';
import 'package:flutter_provider/reverse_select/reverse_select_screen_b.dart';
import 'package:provider/provider.dart';

import 'reverse_select_screen_d.dart';

class ReverseSelectScreen extends StatelessWidget {
  const ReverseSelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('scaffold');
    context.read<ReverseSelectModel>().x = 112;
    // context.watch<ReverseSelectModel>().x = 11;
    // context.select<ReverseSelectModel, int>((ReverseSelectModel provider) => provider.number).toString()}
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider: Counter"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.teal.shade100,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(context.watch<ReverseSelectModel>().x!.toString()),
                  ReverseSelectScreenA(),
                  ReverseSelectScreenB(),
                ],
              ),
              _controller(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _controller(BuildContext context) {
    print('_controller');
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
            onPressed: () {
              context.read<ReverseSelectModel>().increase();
            },
            child: Text('num+')),
        TextButton(
            onPressed: () {
              context.read<ReverseSelectModel>().decrease();
            },
            child: Text('num-')),
        TextButton(
            onPressed: () {
              context.read<ReverseSelectModel>().increase2();
            },
            child: Text('num2+')),
        TextButton(
            onPressed: () {
              context.read<ReverseSelectModel>().decrease2();
            },
            child: Text('num2-')),
        TextButton(
            onPressed: () {
              context.read<ReverseSelectModel>().increase3();
            },
            child: Text('num3+')),
        TextButton(
            onPressed: () {
              context.read<ReverseSelectModel>().decrease3();
            },
            child: Text('num3-')),
        TextButton(
            onPressed: () {
              context.read<ReverseSelectModel>().increase4();
            },
            child: Text('num4+')),
        TextButton(
            onPressed: () {
              context.read<ReverseSelectModel>().decrease4();
            },
            child: Text('num4-')),
        TextButton(
            onPressed: () {
              context.read<ReverseSelectModel>().increaseAll();
            },
            child: Text('all+')),
        TextButton(
            onPressed: () {
              context.read<ReverseSelectModel>().decreaseAll();
            },
            child: Text('all-')),
      ],
    );
  }
}
