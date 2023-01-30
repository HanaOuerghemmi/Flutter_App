import 'dart:ui';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/colors.dart';

class SpeechScreen extends StatefulWidget {
  const SpeechScreen({super.key});

  @override
  State<SpeechScreen> createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {
  var text = "Hold the button and start speaking";
  var isListening = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        endRadius: 75.0,
        animate: isListening,
        duration: const Duration(milliseconds: 2000),
        glowColor: bgColor,
        repeat: true,
        repeatPauseDuration: const Duration(milliseconds: 100),
        //showTowGlows: true,
        child: GestureDetector(
          onTapDown: (details) {
            setState(() {
              isListening = true;
            });
          },
          onTapUp: (details) {
            setState(() {
              isListening = false;
            });
          },
          child: const CircleAvatar(
            backgroundColor: bgColor,
            radius: 35,
            child: Icon(
              //isListening ?
              Icons.mic,
              color: Colors.white,
            ),
          ),
        ),
      ),
      appBar: AppBar(
        leading: const Icon(Icons.sort_rounded, color: Colors.white),
        centerTitle: true,
        backgroundColor: bgColor,
        elevation: 0.0,
        title: const Text(
          "Speech to Text",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: TextColor,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        margin: const EdgeInsets.only(bottom: 150),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 24,
            color: Colors.black54,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
