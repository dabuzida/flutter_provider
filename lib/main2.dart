import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

//컨슈머 테스트 ㄱㄱ
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Counter>(
      // Counter에 대한 Provider를 생성했다.
      create: (_) => Counter(),
      child: MaterialApp(
        title: 'Provider Example',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Provider Example'),
            centerTitle: true,
          ),
          body: Center(
            child: Consumer<Counter>(
              // Consumer를 사용하여 ElevatedButton을 감쌌다.
              builder: (_, counter, __) => ElevatedButton(
                child: Text(
                  '현재 숫자: ${counter.count}',
                ),
                onPressed: () {
                  counter.increment();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Example'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            '현재 숫자: ${Provider.of<Counter>(context).count}',
          ),
          onPressed: () {
            Provider.of<Counter>(context, listen: false).increment();
          },
        ),
      ),
    );
  }
}

class Counter extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
    // 숫자가 증가했다는 것을 ChangeNotifierProvider에 알려주기 위해 notifyListeners()를 호출한다.
  }
}
