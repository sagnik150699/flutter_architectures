import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';
import '../bloc/counter_event.dart';
import '../bloc/counter_state.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Directly use the context provided by the build method
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Center(
            child: Text(
              'Counter Value: ${state.value}',
              style: TextStyle(fontSize: 24),
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
      children: <Widget>[
        FloatingActionButton(
          onPressed: () => BlocProvider.of<CounterBloc>(context).add(Increment()),
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        SizedBox(width: 10),
        FloatingActionButton(
          onPressed: () => BlocProvider.of<CounterBloc>(context).add(Decrement()),
          tooltip: 'Decrement',
          child: Icon(Icons.remove),
        ),
      ],
    );
  }
}
