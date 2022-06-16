import 'package:flutter/material.dart';

class TakaWidget extends StatelessWidget {
  const TakaWidget({
    Key? key,
    required this.takaTextStyle,
    required this.isBigFont,
  }) : super(key: key);

  final TextStyle takaTextStyle;
  final bool isBigFont;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: isBigFont ? 4 : 3),
      margin: EdgeInsets.only(right: isBigFont ? 2 : 1),
      child: Text(
        '৳',
        style: takaTextStyle,
      ),
    );
  }
}
