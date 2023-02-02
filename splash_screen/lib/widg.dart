import 'package:flutter/material.dart';
import 'package:splash_screen/circle_widgets.dart';

class CircleProg extends StatelessWidget {
  const CircleProg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Transform.scale(
              scale: 4,
              child: const CircularProgressIndicator(
                  color: Colors.blueAccent,
                  backgroundColor: Colors.blueGrey,
                  strokeWidth: 8),
            ),
          ],
        ),
      ),
    );
  }
}
