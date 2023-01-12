import 'package:flutter/material.dart';
import 'package:web_responsive/responsive/descktop_scaffold.dart';
import 'package:web_responsive/responsive/mobile_scaffolld.dart';
import 'package:web_responsive/responsive/responsive_layout.dart';
import 'package:web_responsive/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        tabletScaffold: const TabletScaffold(),
        descktopScaffold: const DescktopScaffold(),
      ),
    );
  }
}
