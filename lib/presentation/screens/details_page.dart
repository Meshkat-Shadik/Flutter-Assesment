import 'package:ecommerce_demo/constants.dart';
import 'package:ecommerce_demo/presentation/widgets/custom_search_field.dart';
import 'package:ecommerce_demo/presentation/widgets/expanded_fab_button.dart';
import 'package:ecommerce_demo/presentation/widgets/image_carousel.dart';
import 'package:ecommerce_demo/presentation/widgets/taka_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DetailsPage extends HookWidget {
  const DetailsPage({Key? key}) : super(key: key);

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
            const ImageCarousel(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'প্রিঞ্জেলস অনিওন চিপস ৪২ গ্রাম',
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
                      const Text(
                        'প্রিঞ্জেলস',
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
                      const Text(
                        'মোঃ মোবারাক হোসেন',
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
                                  amount: 220.0,
                                  title: 'ক্রয়মূল্যঃ',
                                  textStyle: dkroyPriceStyle,
                                ),
                                SizedBox(
                                  height: 36,
                                  child: DetailsRowItem(
                                    amount: 250.0,
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
                                  amount: 30.0,
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
              child: Text(
                'জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে অসম্পূর্ণ হয়ে সে জন্মগ্রহণ করে। বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে প্রকৃতির মালখানা থেকে। জীবরঙ্গভূমিতে মানুষ এসে দেখা দেয় দুই শূন্য হাতে মুঠো বেঁধে।জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে অসম্পূর্ণ হয়ে সে জন্মগ্রহণ করে। বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে প্রকৃতির মালখানা থেকে। জীবরঙ্গভূমিতে মানুষ এসে দেখা দেয় দুই শূন্য হাতে মুঠো বেঁধে।',
                style: detailsProductTitle.copyWith(
                  fontSize: dBistaritoDescFontSize,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 2,
                ),
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
