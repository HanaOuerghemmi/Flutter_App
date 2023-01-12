import 'package:flutter/material.dart';
import 'package:web_responsive/constants.dart';
import 'package:web_responsive/util/my_box.dart';
import 'package:web_responsive/util/my_title.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      drawer: myDrower,
      backgroundColor: defaultBg,
      // body of mobile screen with 4 box on the top
      body: Column(
        children: [
          //4box in thr top
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return const MyBox();
                },
              ),
            ),
          ),
          //title
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return MyTitle();
              },
            ),
          )
        ],
      ),
    );
  }
}
