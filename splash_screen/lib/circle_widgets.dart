import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  const CircleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
            color: Colors.blueAccent,
            backgroundColor: Colors.blueGrey,
            strokeWidth: 10));
  }
}
