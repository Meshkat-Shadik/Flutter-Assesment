import 'package:ecommerce_demo/constants.dart';
import 'package:ecommerce_demo/presentation/widgets/row_widgets.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double rowItemWidth = (size.width - 45) / 2;
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(height: 24),
              Container(
                height: 48,
                decoration: BoxDecoration(
                  color: bgWhite,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RowItem(
                          width: rowItemWidth,
                          kroyTaka: 20,
                          bikroyTaka: 25,
                          kroyPreviousTaka: 22,
                          lavTaka: 5,
                          isStockAvail: false,
                        ),
                        RowItem(
                          width: rowItemWidth,
                          kroyTaka: 20,
                          bikroyTaka: 25,
                          kroyPreviousTaka: 22,
                          lavTaka: 5,
                          isStockAvail: true,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
