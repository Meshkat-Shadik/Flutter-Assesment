import 'package:ecommerce_demo/infrastructure/model/api_data_model.dart';
import 'package:ecommerce_demo/infrastructure/model/home_page_item_model/home_page_item_model.dart';
import 'package:ecommerce_demo/presentation/widgets/bottom_loader.dart';
import 'package:ecommerce_demo/presentation/widgets/row_widgets.dart';
import 'package:flutter/material.dart';

class CommonGridView extends StatelessWidget {
  const CommonGridView({
    Key? key,
    required this.controller,
    required this.rowItemWidth,
    required this.hasReachedMax,
    required this.dataList,
  }) : super(key: key);

  final ScrollController controller;
  final double rowItemWidth;
  final bool hasReachedMax;
  final List<Result> dataList;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.builder(
        controller: controller,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2 / 3.87,
          crossAxisCount: 2,
          crossAxisSpacing: 5,
        ),
        physics: const BouncingScrollPhysics(),
        itemCount: hasReachedMax ? dataList.length : dataList.length + 2,
        itemBuilder: (context, index) {
          if (index >= dataList.length) {
            return Container(
              alignment: Alignment.center,
              child: const BottomLoader(),
            );
          } else {
            return RowItem(
              width: rowItemWidth,
              homeItemModel: HomeItemModel(
                title: dataList[index].productName ?? 'Undefined',
                kroy: dataList[index].charge?.currentCharge ?? 0,
                bikroy: dataList[index].charge?.sellingPrice ?? 0,
                lav: dataList[index].charge?.profit ?? 0,
                discount: dataList[index].charge?.discountCharge ?? 0,
                image: dataList[index].images!.first.image!,
                stock: dataList[index].stock! > 0 ? true : false,
              ),
              productResult: Result(
                productName: dataList[index].productName,
                brand: dataList[index].brand,
                seller: dataList[index].seller,
                images: dataList[index].images!,
                charge: Charge(
                  currentCharge: dataList[index].charge!.currentCharge,
                  sellingPrice: dataList[index].charge!.sellingPrice,
                  profit: dataList[index].charge!.profit,
                ),
                description: dataList[index].description,
              ),
            );
          }
        },
      ),
    );
  }
}