import 'package:flutter/material.dart';

import 'constant.dart';

class ActivityChoice extends StatelessWidget {
  String title;
  double height;
  double width;
  ActivityChoice({
    required this.height,
    required this.width,
    required this.title,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Color(0xffEEE1F5),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(title,
          style: style144B,
        ),
      ),
    );
  }
}
