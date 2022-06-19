import 'package:ecommerce_demo/constants.dart';
import 'package:ecommerce_demo/infrastructure/model/api_data_model.dart';
import 'package:ecommerce_demo/presentation/widgets/custom_search_field.dart';
import 'package:ecommerce_demo/presentation/widgets/expanded_fab_button.dart';
import 'package:ecommerce_demo/presentation/widgets/image_carousel.dart';
import 'package:ecommerce_demo/presentation/widgets/taka_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_html/flutter_html.dart';

class DetailsPage extends HookWidget {
  const DetailsPage({
    Key? key,
    required this.productResult,
  }) : super(key: key);

  final Result productResult;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final isToggleButton = useState(false);
    final testCheckingValue = useState(1);

    return SafeArea(
      child: Scaffold(
        backgroundColor: bgPrimaryColor,
        appBar: AppBar(
          title: const Text('প্রোডাক্ট ডিটেইল'),
          backgroundColor: bgPrimaryColor,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: const [
                  CustomSearchField(),
                  SizedBox(height: 20),
                ],
              ),
            ),
            ImageCarousel(
              imageList: productResult.images!,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      productResult.productName!,
                      style: detailsProductTitle,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Text(
                        'ব্রান্ডঃ ',
                        style: dBrandDistributorNameStyle,
                      ),
                      Text(
                        productResult.brand!.name!,
                        style: dBrandDistributorValueStyle,
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: pinkColor,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'ডিস্ট্রিবিউটরঃ ',
                        style: dBrandDistributorNameStyle,
                      ),
                      Text(
                        productResult.seller!,
                        style: dBrandDistributorValueStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 116,
                            decoration: BoxDecoration(
                              color: bgWhite,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: [
                                DetailsRowItem(
                                  amount: productResult.charge!.currentCharge!,
                                  title: 'ক্রয়মূল্যঃ',
                                  textStyle: dkroyPriceStyle,
                                ),
                                SizedBox(
                                  height: 36,
                                  child: DetailsRowItem(
                                    amount: productResult.charge!.sellingPrice!,
                                    title: 'বিক্রয়মূল্যঃ',
                                    textStyle: dBikroyLavPriceStyle,
                                    testCheckingValue: testCheckingValue,
                                    toggleButton: isToggleButton,
                                  ),
                                ),
                                Text(
                                  dashedLine,
                                  style: dashedLineStyle,
                                ),
                                DetailsRowItem(
                                  amount: productResult.charge!.profit!,
                                  title: 'লাভঃ',
                                  textStyle: dBikroyLavPriceStyle,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 180),
                      Positioned(
                        top: 90.0,
                        left: size.width / 2.75,
                        child: GestureDetector(
                          onTap: () {
                            isToggleButton.value = true;
                          },
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/custom_button.png'),
                                  ),
                                ),
                                child: isToggleButton.value
                                    ? Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Icon(
                                              Icons.shopping_cart_outlined,
                                              color: bgWhite,
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              'কার্ট',
                                              style: etiKinunStyle,
                                            ),
                                          ],
                                        ),
                                      )
                                    : const Center(
                                        child: Text(
                                          ' এটি\nকিনুন',
                                          style: etiKinunStyle,
                                        ),
                                      ),
                              ),
                              isToggleButton.value
                                  ? Positioned(
                                      top: 13,
                                      left: 70,
                                      child: Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                          color: fabExpandedColor,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            width: 1.5,
                                            color: bgWhite,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            testCheckingValue.value.toString(),
                                            style: hQuantityTextStyle,
                                          ),
                                        ),
                                      ),
                                    )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'বিস্তারিত',
                style: detailsProductTitle.copyWith(
                  fontSize: dBistaritoTitleFontSize,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Html(
                data: productResult.description,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class DetailsRowItem extends StatelessWidget {
  const DetailsRowItem({
    Key? key,
    required this.title,
    required this.amount,
    required this.textStyle,
    this.testCheckingValue,
    this.toggleButton,
  }) : super(key: key);

  final String title;
  final double amount;
  final TextStyle textStyle;
  final ValueNotifier<int>? testCheckingValue;
  final ValueNotifier<bool>? toggleButton;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: textStyle,
        ),
        (testCheckingValue != null &&
                toggleButton != null &&
                toggleButton!.value == true)
            ? ExpandedFabButton(
                testCheckingValue: testCheckingValue!,
                toggleButton: toggleButton!,
              )
            : Container(),
        TakaWidget(
          takaTextStyle: textStyle,
          isBigFont: true,
          amount: amount,
        )
      ],
    );
  }
}
