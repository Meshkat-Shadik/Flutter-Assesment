import 'package:ecommerce_demo/constants.dart';
import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({
    Key? key,
    required this.isBigSize,
    this.isLeftInsideButton,
  }) : super(key: key);

  final bool isBigSize;
  final bool? isLeftInsideButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isBigSize ? 36 : 28,
      width: isBigSize ? 36 : 28,
      decoration: isLeftInsideButton != null
          ? BoxDecoration(
              color: minusFabButtonColor,
              borderRadius: BorderRadius.circular(18),
            )
          : BoxDecoration(
              gradient: floatingBtnGradient,
              borderRadius: BorderRadius.circular(18),
            ),
      child: Icon(
        isLeftInsideButton != null ? Icons.remove : Icons.add,
        size: 16,
        color: bgWhite,
      ),
    );
  }
}
