import 'package:flutter/material.dart';
import 'package:flutter_architectures/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter MVC ",
      home: HomePageView(),
    );
  }
}
