import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_provider/counter2/counter_model_2.dart';
import 'package:flutter_provider/counter2/theme_color_model.dart';
import 'package:provider/single_child_widget.dart';

import 'counter/counter_model.dart';
import 'counter/counter_screen.dart';
import 'counter2/counter_screen_2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 1. 상태관리 모델 1개일때
    return ChangeNotifierProvider<CounterModel>(
      // create: (BuildContext context) => CounterModel(),
      create: (_) => CounterModel(),
      child: const MaterialApp(
        title: 'Provider',
        home: CounterScreen(),
      ),
    );

    // 2. 상태관리 모델 여러개 일때
    // return MultiProvider(
    //   providers: <SingleChildWidget>[
    //     //CounterScreen
    //     ChangeNotifierProvider<CounterModel>(create: (BuildContext context) => CounterModel()),

    //     //CounterScreen2
    //     ChangeNotifierProvider<CounterModel2>(create: (_) => CounterModel2()),
    //     ChangeNotifierProvider<ThemeColorModel>(create: (_) => ThemeColorModel()),

    //     //Provider<String>.value(value: "Park") //프로바이더추가방법
    //   ],
    //   child: MaterialApp(
    //     title: 'Provider',
    //     home: Row(
    //       children: <Widget>[
    //         const Expanded(child: CounterScreen()),
    //         Expanded(child: CounterScreen2()),
    //       ],
    //     ),
    //   ),
    // );
    //////////////////////////////////////////////

    // 3
    // return MaterialApp(
    //   title: 'Provider',
    //   home: MultiProvider(
    //     providers: <SingleChildWidget>[
    //       //CounterScreen
    //       ChangeNotifierProvider<CounterModel>(create: (BuildContext context) => CounterModel()),

    //       //CounterScreen2
    //       ChangeNotifierProvider<CounterModel2>(create: (_) => CounterModel2()),
    //       ChangeNotifierProvider<ThemeColorModel>(create: (_) => ThemeColorModel()),
    //     ],
    //     child: Row(
    //       children: <Widget>[
    //         const Expanded(child: CounterScreen()),
    //         Expanded(child: CounterScreen2()),
    //       ],
    //     ),
    //   ),
    // );
    /////////////////////////////////////////////////
    // 4
    // return MaterialApp(
    //   title: 'Provider',
    //   home: ChangeNotifierProvider<CounterModel>(
    //     create: (_) => CounterModel(),
    //     child: const CounterScreen(),
    //   ),
    // );
  }
}
