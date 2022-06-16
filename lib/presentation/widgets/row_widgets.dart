import 'package:ecommerce_demo/constants.dart';
import 'package:ecommerce_demo/presentation/widgets/custom_circle_button.dart';
import 'package:ecommerce_demo/presentation/widgets/taka_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RowItem extends HookWidget {
  const RowItem({
    Key? key,
    required this.width,
    required this.kroyTaka,
    required this.bikroyTaka,
    required this.kroyPreviousTaka,
    required this.lavTaka,
    required this.isStockAvail,
  }) : super(key: key);
  final double width;
  final double kroyTaka;
  final double bikroyTaka;
  final double kroyPreviousTaka;
  final double lavTaka;
  final bool isStockAvail;

  @override
  Widget build(BuildContext context) {
    final toggleButton = useState(false);
    final testCheckingValue = useState(0);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 267,
          width: width,
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: bgWhite,
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    height: 148,
                    width: width,
                    color: bgWhite,
                    child: Image.asset(
                      'assets/potato_chips.png',
                      height: 117,
                      width: 87,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Lays Classic Family Chips Chips',
                    style: hTitleStyle,
                    maxLines: 2,
                  ),
                  const SizedBox(height: 8),
                  RowPrice(
                    kroyTaka: kroyTaka,
                    kroyPreviousTaka: kroyPreviousTaka,
                    bikroyTaka: bikroyTaka,
                    lavTaka: lavTaka,
                    isTopRow: true,
                  ),
                  RowPrice(
                    kroyTaka: kroyTaka,
                    kroyPreviousTaka: kroyPreviousTaka,
                    bikroyTaka: bikroyTaka,
                    lavTaka: lavTaka,
                    isTopRow: false,
                  ),
                ],
              ),
              !isStockAvail
                  ? Positioned(
                      right: 0,
                      child: Container(
                        height: 20,
                        width: 70,
                        decoration: BoxDecoration(
                          color: badgeErrorShadeColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Center(
                          child: Text(
                            'স্টকে নেই',
                            style: bageErrorTextStyle,
                          ),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
        toggleButton.value
            ? Positioned(
                left: 25,
                right: 25,
                bottom: -18,
                child: Container(
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
                          if (testCheckingValue.value > 0) {
                            testCheckingValue.value =
                                testCheckingValue.value - 1;
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
                ),
              )
            : isStockAvail
                ? Positioned(
                    bottom: -18,
                    left: width / 2.4,
                    child: InkWell(
                      onTap: () => toggleButton.value = true,
                      child: const CustomCircleButton(
                        isBigSize: true,
                      ),
                    ),
                  )
                : Container(),
      ],
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              isTopRow ? 'ক্রয়' : 'বিক্রয়',
              style: hKroyBikroyLavTextStyle,
            ),
            const SizedBox(width: 5),
            Row(
              children: [
                TakaWidget(
                  takaTextStyle: isTopRow ? hkroyPriceStyle : hBikroyPriceStyle,
                  isBigFont: true,
                ),
                Text(
                  isTopRow
                      ? kroyTaka.toStringAsFixed(2)
                      : bikroyTaka.toStringAsFixed(2),
                  style: isTopRow ? hkroyPriceStyle : hBikroyPriceStyle,
                ),
              ],
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
            const SizedBox(width: 3),
            Row(
              children: [
                TakaWidget(
                  takaTextStyle:
                      isTopRow ? hKroyPreviousStyle : hBikroyPriceStyle,
                  isBigFont: false,
                ),
                Text(
                  isTopRow
                      ? kroyPreviousTaka.toStringAsFixed(2)
                      : lavTaka.toStringAsFixed(2),
                  style: isTopRow ? hKroyPreviousStyle : hBikroyPriceStyle,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
