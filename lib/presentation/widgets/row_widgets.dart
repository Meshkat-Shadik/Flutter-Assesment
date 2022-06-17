import 'package:ecommerce_demo/constants.dart';
import 'package:ecommerce_demo/presentation/screens/details_page.dart';
import 'package:ecommerce_demo/presentation/widgets/custom_circle_button.dart';
import 'package:ecommerce_demo/presentation/widgets/expanded_fab_button.dart';
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailsPage(),
                          ));
                    },
                    child: Text(
                      'Lays Classic Family Chips Chips',
                      style: hTitleStyle,
                      maxLines: 2,
                    ),
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
                child: ExpandedFabButton(
                  testCheckingValue: testCheckingValue,
                  toggleButton: toggleButton,
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
