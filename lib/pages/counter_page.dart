
import 'package:flutter/material.dart';
import 'package:flutter_architectures/bloc/counter_bloc.dart';
import 'package:flutter_architectures/bloc/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_state.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App Bloc'),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Center(
            child: Text(
              state.value.toString(),
              style: const TextStyle(fontSize: 24.0),
            ),
          );
        },
      ),
      floatingActionButton: MyFloatingActionButtons(),
    );
  }
}

class MyFloatingActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () =>
              BlocProvider.of<CounterBloc>(context).add(Increment()),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        const SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(
          onPressed: () =>
              BlocProvider.of<CounterBloc>(context).add(Decrement()),
          tooltip: 'Decrement',
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
