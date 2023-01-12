import 'package:flutter/material.dart';
import 'package:web_responsive/constants.dart';
import 'package:web_responsive/util/my_box.dart';
import 'package:web_responsive/util/my_title.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      drawer: myDrower,
      backgroundColor: defaultBg,
      body: Column(
        children: [
          //4box in thr top
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
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
                return const MyTitle();
              },
            ),
          )
        ],
      ),
    );
  }
}
