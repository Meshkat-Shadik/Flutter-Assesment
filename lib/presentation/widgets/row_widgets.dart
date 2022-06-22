import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_demo/constants.dart';
import 'package:ecommerce_demo/infrastructure/model/api_data_model.dart';
import 'package:ecommerce_demo/infrastructure/model/home_page_item_model/home_page_item_model.dart';
import 'package:ecommerce_demo/presentation/routes/router.gr.dart';
import 'package:ecommerce_demo/presentation/screens/details_page.dart';
import 'package:ecommerce_demo/presentation/widgets/custom_circle_button.dart';
import 'package:ecommerce_demo/presentation/widgets/expanded_fab_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RowItem extends HookWidget {
  const RowItem({
    Key? key,
    required this.width,
    required this.homeItemModel,
    this.productResult,
  }) : super(key: key);
  final double width;
  final HomeItemModel homeItemModel;
  final Result? productResult;

  @override
  Widget build(BuildContext context) {
    final toggleButton = useState(false);
    final testCheckingValue = useState(1);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Column(
          children: [
            Container(
              height: 265,
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
                        child: Image.network(
                          homeItemModel.image!,
                          height: 117,
                          width: 87,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 6),
                      InkWell(
                        onTap: () {
                          if (productResult != null) {
                            context.router.push(
                              DetailsPageRoute(
                                productResult: productResult!,
                              ),
                            );
                          }
                        },
                        child: Text(
                          homeItemModel.title!,
                          style: hTitleStyle,
                          maxLines: 2,
                        ),
                      ),
                      const SizedBox(height: 8),
                      RowPrice(
                        kroyTaka: homeItemModel.kroy! * testCheckingValue.value,
                        kroyPreviousTaka:
                            homeItemModel.discount! * testCheckingValue.value,
                        bikroyTaka:
                            homeItemModel.bikroy! * testCheckingValue.value,
                        lavTaka: homeItemModel.lav! * testCheckingValue.value,
                        isTopRow: true,
                      ),
                      RowPrice(
                        kroyTaka: homeItemModel.kroy! * testCheckingValue.value,
                        kroyPreviousTaka:
                            homeItemModel.discount! * testCheckingValue.value,
                        bikroyTaka:
                            homeItemModel.bikroy! * testCheckingValue.value,
                        lavTaka: homeItemModel.lav! * testCheckingValue.value,
                        isTopRow: false,
                      ),
                    ],
                  ),
                  !homeItemModel.stock!
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
            const SizedBox(height: 50),
          ],
        ),
        toggleButton.value
            ? Positioned(
                left: 25,
                right: 25,
                bottom: 30,
                child: ExpandedFabButton(
                  testCheckingValue: testCheckingValue,
                  toggleButton: toggleButton,
                ),
              )
            : homeItemModel.stock!
                ? Positioned(
                    bottom: 30,
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
