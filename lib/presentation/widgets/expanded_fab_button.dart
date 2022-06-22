import 'package:ecommerce_demo/constants.dart';
import 'package:ecommerce_demo/presentation/widgets/custom_circle_button.dart';
import 'package:ecommerce_demo/presentation/widgets/taka_widget.dart';
import 'package:flutter/material.dart';

class ExpandedFabButton extends StatelessWidget {
  const ExpandedFabButton({
    Key? key,
    required this.testCheckingValue,
    required this.toggleButton,
  }) : super(key: key);

  final ValueNotifier<int> testCheckingValue;
  final ValueNotifier<bool> toggleButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 36,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: fabExpandedColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              if (testCheckingValue.value > 1) {
                testCheckingValue.value = testCheckingValue.value - 1;
              } else {
                toggleButton.value = false;
              }
            },
            child: const CustomCircleButton(
              isBigSize: false,
              isLeftInsideButton: true,
            ),
          ),
          Row(
            children: [
              Text(
                testCheckingValue.value.toString(),
                style: hQuantityTextStyle,
              ),
              Container(
                margin: const EdgeInsets.only(top: 2),
                child: const Text(
                  ' পিস',
                  style: hQuantityTextStyle,
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              testCheckingValue.value = testCheckingValue.value + 1;
            },
            child: const CustomCircleButton(
              isBigSize: false,
            ),
          ),
        ],
      ),
    );
  }
}

class RowPrice extends StatelessWidget {
  const RowPrice({
    Key? key,
    required this.kroyTaka,
    required this.kroyPreviousTaka,
    required this.isTopRow,
    required this.bikroyTaka,
    required this.lavTaka,
  }) : super(key: key);

  final double kroyTaka;
  final double kroyPreviousTaka;
  final double bikroyTaka;
  final double lavTaka;
  final bool isTopRow;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                isTopRow ? 'ক্রয়' : 'বিক্রয়',
                style: hKroyBikroyLavTextStyle,
              ),
              const SizedBox(width: 10),
              TakaWidget(
                takaTextStyle: isTopRow ? hkroyPriceStyle : hBikroyPriceStyle,
                isBigFont: true,
                amount: isTopRow ? kroyTaka : bikroyTaka,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                isTopRow ? '' : 'লাভ',
                style: hKroyBikroyLavTextStyle,
              ),
              const SizedBox(width: 10),
              TakaWidget(
                takaTextStyle:
                    isTopRow ? hKroyPreviousStyle : hBikroyPriceStyle,
                isBigFont: false,
                amount: isTopRow ? kroyPreviousTaka : lavTaka,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
