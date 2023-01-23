import 'package:flutter/material.dart';

class CategorieWidgets extends StatelessWidget {
  const CategorieWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 8; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    // ussing variable i to change picture in for loop
                    "images/$i.png",
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    "Sandal",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xff4c53a5),
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
