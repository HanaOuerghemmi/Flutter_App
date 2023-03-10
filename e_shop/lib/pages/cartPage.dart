import 'package:e_shop/widgets/CartItemSimple.dart';
import 'package:flutter/material.dart';

import '../widgets/CartAppBar.dart';

class CartPages extends StatelessWidget {
  const CartPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xffedecf2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                CartItemSimple(),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff4c53a5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
