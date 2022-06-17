import 'package:ecommerce_demo/application/api_data/api_data_bloc.dart';
import 'package:ecommerce_demo/constants.dart';
import 'package:ecommerce_demo/infrastructure/model/home_page_item_model/home_page_item_model.dart';
import 'package:ecommerce_demo/presentation/widgets/custom_search_field.dart';
import 'package:ecommerce_demo/presentation/widgets/row_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              const CustomSearchField(),
              BlocBuilder<ApiDataBloc, ApiDataState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => Container(),
                    loadInProgress: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loadSucess: (val) {
                      return Flexible(
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 2 / 3.22,
                            crossAxisCount: 2,
                            crossAxisSpacing: 12,
                          ),
                          physics: const BouncingScrollPhysics(),
                          itemCount: val.results!.length,
                          itemBuilder: (context, index) {
                            final tempVariable = val.results![index];
                            return RowItem(
                              width: rowItemWidth,
                              homeItemModel: HomeItemModel(
                                title: tempVariable.productName ?? 'Undefined',
                                kroy: tempVariable.charge?.currentCharge ?? 0,
                                bikroy: tempVariable.charge?.sellingPrice ?? 0,
                                lav: tempVariable.charge?.profit ?? 0,
                                discount:
                                    tempVariable.charge?.discountCharge ?? 0,
                                image: tempVariable.images!.first.image!,
                                stock: tempVariable.stock! > 0 ? true : false,
                              ),
                            );
                          },
                        ),
                      );
                    },
                    loadFailure: (e) {
                      return e.when(
                        unexpected: () => const Text('Unexpected'),
                        internetConnectionFailure: () =>
                            const Text('internetConnectionFailure'),
                        requestDenied: () => const Text('requestDenied'),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
