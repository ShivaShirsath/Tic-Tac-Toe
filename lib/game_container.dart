import 'package:flutter/material.dart';

class GameContainer extends StatefulWidget {
  const GameContainer({Key? key}) : super(key: key);

  @override
  _GameContainerState createState() => _GameContainerState();
}

class _GameContainerState extends State<GameContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 9,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return Container(
            child: Center(
              child: Text(
                '${index}',
              ),
            ),
          );
        },
      ),
    );
  }
}
