import 'package:flutter/material.dart';
import 'package:flutter_architectures/bloc/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'pages/counter_page.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => CounterBloc(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bloc Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterPage(),
    );
  }
}
