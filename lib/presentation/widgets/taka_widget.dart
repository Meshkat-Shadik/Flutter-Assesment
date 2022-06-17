import 'package:flutter/material.dart';

class TakaWidget extends StatelessWidget {
  const TakaWidget({
    Key? key,
    required this.takaTextStyle,
    required this.isBigFont,
    required this.amount,
  }) : super(key: key);

  final TextStyle takaTextStyle;
  final bool isBigFont;
  final double amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(top: isBigFont ? 4 : 3),
          margin: EdgeInsets.only(right: isBigFont ? 2 : 1),
          child: Text(
            '৳',
            style: takaTextStyle,
          ),
        ),
        Text(
          amount.toStringAsFixed(2),
          style: takaTextStyle,
        ),
      ],
    );
  }
}
