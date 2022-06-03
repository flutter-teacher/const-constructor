import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //
                MyText1(text: 'Flutter'),
                MyText1(text: 'Flutter'),

                //
                const MyText2(text: 'Teacher'),
                const MyText2(text: 'Teacher'),

                //
                Text('$_counter'),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

// without const
class MyText1 extends StatelessWidget {
  //
  final String text;
  MyText1({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build of MyText1 called');
    print('value of text=$text hash code=$hashCode');
    return Text(text);
  }
}

// with const
class MyText2 extends StatelessWidget {
  //
  final String text;
  const MyText2({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build of MyText2 called');
    print('value of text=$text hash code=$hashCode');
    return Text(text);
  }
}
