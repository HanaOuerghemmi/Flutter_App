import 'package:flutter/material.dart';
import 'package:web_responsive/constants.dart';
import 'package:web_responsive/util/my_box.dart';

import '../util/my_title.dart';

class DescktopScaffold extends StatelessWidget {
  const DescktopScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBg,
      appBar: myAppBar,
      body: Row(
        children: [
          myDrower,
          //middel part with box widget
          Expanded(
            flex: 2,
            child: Column(
              children: [
                //4box in thr top
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(child: Container(color: Colors.pink)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
