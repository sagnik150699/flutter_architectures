import 'package:flutter/material.dart';
import 'package:flutter_architectures/counter_models.dart';
import 'package:flutter_architectures/counter_viewmodel.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  final CounterViewModel viewModel = CounterViewModel(CounterModel());

  @override
  void initState() {
    super.initState();
    viewModel.onCounterChanged = () => setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MVVM "),
      ),
      body: Center(
          child: Text(
        "${viewModel.counter}",
        style: const TextStyle(fontSize: 40.0),
      )),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          viewModel.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
