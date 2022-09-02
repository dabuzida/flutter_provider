import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'count_provider.dart';
import 'home.dart';
import 'home_screen.dart';
import 'my_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ThemeColor>(create: (_) => ThemeColor()),
    // ChangeNotifierProvider<CounterViewModel>(create: (_) => CounterViewModel()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final colorList = <Color>[
    ThemeColor().red,
    ThemeColor().yellow,
    ThemeColor().green,
    ThemeColor().blue,
    ThemeColor().purple,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider',
      color: context.watch<ThemeColor>().color,
      theme: ThemeData(
        primaryColor: Colors.amber,
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      // home: MyHomePage(title: 'Flutter Provider Tutorial'),

      home: Scaffold(
          appBar: AppBar(
            title: const Text('Provider'),
            elevation: 0,
            foregroundColor: Colors.white,
            backgroundColor: Colors.teal,
            centerTitle: true,
          ),
          backgroundColor: Colors.grey,
          persistentFooterButtons: colorList
              .map<Widget>(
                (color) => GestureDetector(
                  onTap: () {
                    context.read<ThemeColor>().changeColor(color);
                  },
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: color),
                  ),
                ),
              )
              .toList(),
          body: Center(
            child: Container(
              width: 500,
              height: 500,
              color: context.watch<ThemeColor>().color,
            ),
          )),
    );
  }
}

class CounterViewModel extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;
  void incrementCounter() {
    _counter++;
    notifyListeners();
  }
}
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
