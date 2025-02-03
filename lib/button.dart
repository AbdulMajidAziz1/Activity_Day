import 'package:flutter/material.dart';
import 'package:town_square_practice/constant.dart';

class Button1 extends StatelessWidget {
  final String title;
  const Button1({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      width: 63,
      decoration: BoxDecoration(
        color: Color(0xff000000),
        borderRadius: BorderRadius.circular(4)
      ),
      child: Center(
        child: Text(title,
          style: style125,
        ),
      ),
    );
  }
}
