import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: _TempHomeScreen());
  }
}

class _TempHomeScreen extends StatelessWidget {
  const _TempHomeScreen();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Text('Hola Mundo'), Text('Hola Mundo')],
    );
  }
}
