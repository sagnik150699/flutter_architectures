import 'package:flutter/material.dart';

import 'Model.dart';
import 'controller.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final Model _model = Model();
  late CounterController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CounterController(_model);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter MVC'),
      ),
      body: Center(
        child: Text(
          '${_controller.counter}',
          style: const TextStyle(fontSize: 40.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _controller.incrementCounter();
        }),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}