import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(right: 80),
        child: ClipPath(
          clipper: UpperNipMessageClipper(MessageType.receive),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xffe1e1e2),
            ),
            child: Text("Hello, What i can do for you, you can book appointment directly",
            style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
           padding: EdgeInsets.only(top: 20, left: 80),
        child: ClipPath(
          clipper: UpperNipMessageClipper(MessageType.send),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xff7165d6),
            ),
            child: Text("Hello Doctors, Are you there",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              ),
            ),
          ),
        ),
        ),
            
            ),
      
      ],
    );
  }
}