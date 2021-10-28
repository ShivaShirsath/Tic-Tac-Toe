import 'package:flutter/material.dart';
import 'package:tictactoe/game_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      //darkTheme: ThemeData.dark(),
      home: const MyHomePage(
        title: 'O X Y Home Page',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _method() {
    setState(
      () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Hello",
        ),
        GameContainer(),
        Text(
          "World",
        ),
      ],
    );
  }
}
