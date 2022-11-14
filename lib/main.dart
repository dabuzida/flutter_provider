import 'package:flutter/material.dart';
import 'package:flutter_provider/reverse_select/reverse_select_model.dart';
import 'package:flutter_provider/reverse_select/reverse_select_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_provider/bb_counter/bb_counter_model.dart';
import 'package:flutter_provider/bb_counter/theme_color_model.dart';
import 'package:provider/single_child_widget.dart';

import 'gg_counter/gg_counter_model.dart';
import 'gg_counter/gg_counter_screen.dart';
import 'gg_counter/gg_counter_screen_ii.dart';
import 'test_select_rebuild/test_select_rebuild_model.dart';
import 'test_select_rebuild/test_select_rebuild_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 1. 상태관리 모델 1개일때
    return ChangeNotifierProvider<ReverseSelectModel>(
      // create: (BuildContext context) => CounterModel(),
      create: (_) => ReverseSelectModel(),
      child: const MaterialApp(
        title: 'Provider',
        home: ReverseSelectScreen(),
        // home: CounterScreen(),
      ),
    );
    //
    // return ChangeNotifierProvider<TestSelectRebuildModel>(
    //   // create: (BuildContext context) => CounterModel(),
    //   create: (_) => TestSelectRebuildModel(),
    //   child: const MaterialApp(
    //     title: 'Provider',
    //     home: TestSelectRebuildScreen(),
    //     // home: CounterScreen(),
    //   ),
    // );
    // return ChangeNotifierProvider<GGCounterModel>(
    //   // create: (BuildContext context) => CounterModel(),
    //   create: (_) => GGCounterModel(),
    //   child: const MaterialApp(
    //     title: 'Provider',
    //     home: GGCounterScreenII(),
    //     // home: CounterScreen(),
    //   ),
    // );

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
