import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count += 1;
    });
  }

  void _decrement() {
    setState(() {
      _count -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //   child: Column(
        //     mainAxisSize: MainAxisSize.min,
        //     children: [
        //       Text('you have clicked this many times'),
        //       Text(
        //         '$_count',
        //         style: Theme.of(context).textTheme.headline1,
        //       ),
        //     ],
        //   ),
        // ),
        // floatingActionButton: Column(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     FloatingActionButton(
        //       onPressed: _increment,
        //       child: Icon(Icons.add),
        //     ),
        //     SizedBox(
        //       height: 5,
        //     ),
        //     FloatingActionButton(
        //       onPressed: _decrement,
        //       child: Icon(Icons.remove),
        //     ),
        //   ],
        // ),
        child: Text('status'),
      ),
    );
  }
}
