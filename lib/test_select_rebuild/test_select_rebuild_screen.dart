import 'package:flutter/material.dart';
import 'package:flutter_provider/test_select_rebuild/test_select_rebuild_model.dart';
import 'package:flutter_provider/test_select_rebuild/test_select_rebuild_screen_d.dart';
import 'package:provider/provider.dart';

class TestSelectRebuildScreen extends StatelessWidget {
  const TestSelectRebuildScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('scaffold');
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
              TestSelectRebuildScreenD(),
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
              context.read<TestSelectRebuildModel>().increase();
            },
            child: Text('num+')),
        TextButton(
            onPressed: () {
              context.read<TestSelectRebuildModel>().decrease();
            },
            child: Text('num-')),
        TextButton(
            onPressed: () {
              context.read<TestSelectRebuildModel>().increase2();
            },
            child: Text('num2+')),
        TextButton(
            onPressed: () {
              context.read<TestSelectRebuildModel>().decrease2();
            },
            child: Text('num2-')),
        TextButton(
            onPressed: () {
              context.read<TestSelectRebuildModel>().increase3();
            },
            child: Text('num3+')),
        TextButton(
            onPressed: () {
              context.read<TestSelectRebuildModel>().decrease3();
            },
            child: Text('num3-')),
        TextButton(
            onPressed: () {
              context.read<TestSelectRebuildModel>().increase4();
            },
            child: Text('num4+')),
        TextButton(
            onPressed: () {
              context.read<TestSelectRebuildModel>().decrease4();
            },
            child: Text('num4-')),
        TextButton(
            onPressed: () {
              context.read<TestSelectRebuildModel>().increaseAll();
            },
            child: Text('all+')),
        TextButton(
            onPressed: () {
              context.read<TestSelectRebuildModel>().decreaseAll();
            },
            child: Text('all-')),
      ],
    );
  }
}
