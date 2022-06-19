import 'package:ecommerce_demo/application/api_data/api_data_bloc.dart';
import 'package:ecommerce_demo/constants.dart';
import 'package:ecommerce_demo/infrastructure/model/api_data_model.dart';
import 'package:ecommerce_demo/infrastructure/model/home_page_item_model/home_page_item_model.dart';
import 'package:ecommerce_demo/presentation/widgets/bottom_loader.dart';
import 'package:ecommerce_demo/presentation/widgets/custom_search_field.dart';
import 'package:ecommerce_demo/presentation/widgets/row_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MyHomePage extends HookWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();
    void onScroll() {
      if (controller.position.maxScrollExtent == controller.offset) {
        BlocProvider.of<ApiDataBloc>(context)
            .add(const ApiDataEvent.watchAllstarted());
      }
    }

    useEffect(() {
      controller.addListener(onScroll);
      return () => controller.removeListener(onScroll);
    }, [controller]);

    Size size = MediaQuery.of(context).size;
    double rowItemWidth = (size.width - 45) / 2;
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: BlocBuilder<ApiDataBloc, ApiDataState>(
            builder: (context, state) {
              switch (state.status) {
                case ApiStatus.failure:
                  return const Center(child: Text('failed to fetch products'));
                case ApiStatus.success:
                  if (state.productList.isEmpty) {
                    return const Center(child: Text('No more products'));
                  }
                  return Column(
                    children: [
                      const SizedBox(height: 24),
                      const CustomSearchField(),
                      Flexible(
                        child: GridView.builder(
                          controller: controller,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 2 / 3.22,
                            crossAxisCount: 2,
                            crossAxisSpacing: 12,
                          ),
                          physics: const BouncingScrollPhysics(),
                          itemCount: state.hasReachedMax
                              ? state.productList.length
                              : state.productList.length + 2,
                          itemBuilder: (context, index) {
                            if (index >= state.productList.length) {
                              return Container(
                                alignment: Alignment.center,
                                child: const BottomLoader(),
                              );
                            } else {
                              return RowItem(
                                width: rowItemWidth,
                                homeItemModel: HomeItemModel(
                                  title: state.productList[index].productName ??
                                      'Undefined',
                                  kroy: state.productList[index].charge
                                          ?.currentCharge ??
                                      0,
                                  bikroy: state.productList[index].charge
                                          ?.sellingPrice ??
                                      0,
                                  lav:
                                      state.productList[index].charge?.profit ??
                                          0,
                                  discount: state.productList[index].charge
                                          ?.discountCharge ??
                                      0,
                                  image: state
                                      .productList[index].images!.first.image!,
                                  stock: state.productList[index].stock! > 0
                                      ? true
                                      : false,
                                ),
                                productResult: Result(
                                  productName:
                                      state.productList[index].productName,
                                  brand: state.productList[index].brand,
                                  seller: state.productList[index].seller,
                                  images: state.productList[index].images!,
                                  charge: Charge(
                                    currentCharge: state.productList[index]
                                        .charge!.currentCharge,
                                    sellingPrice: state.productList[index]
                                        .charge!.sellingPrice,
                                    profit:
                                        state.productList[index].charge!.profit,
                                  ),
                                  description:
                                      state.productList[index].description,
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  );
                default:
                  return Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Be Patient!!\n'),
                      CircularProgressIndicator(),
                    ],
                  ));
              }
            },
          ),
        ),
      ),
    );
  }
}
