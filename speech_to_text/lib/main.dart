import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SpeechScreen(),
      debugShowCheckedModeBanner: false,
      title: 'speech to Text',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
