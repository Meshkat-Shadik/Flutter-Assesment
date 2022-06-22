import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_demo/application/search/search_bloc.dart';
import 'package:ecommerce_demo/constants.dart';
import 'package:ecommerce_demo/infrastructure/model/api_data_model.dart';
import 'package:ecommerce_demo/infrastructure/model/home_page_item_model/home_page_item_model.dart';
import 'package:ecommerce_demo/presentation/widgets/bottom_loader.dart';
import 'package:ecommerce_demo/presentation/widgets/row_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchScreen extends HookWidget {
  const SearchScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<ApiDataBloc>(context)..add()

    // print(BlocProvider.of<ApiDataBloc>(context).state.searchInput);
    // print(BlocProvider.of<SearchBloc>(context).state.searchedList.toString());

    final controller = useScrollController();
    void onScroll() {
      if (controller.position.maxScrollExtent == controller.offset) {
        BlocProvider.of<SearchBloc>(context)
            .add(const SearchEvent.searchButtonPressed());
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
        appBar: AppBar(
          backgroundColor: bgPrimaryAppBarColor,
          leading: IconButton(
            onPressed: () {
              BlocProvider.of<SearchBloc>(context)
                  .add(const SearchEvent.clearState());
              context.router.pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Searched Result for ' +
                BlocProvider.of<SearchBloc>(context)
                    .state
                    .searchInput
                    .getOrCrash(),
            style: dBrandDistributorValueStyle,
          ),
        ),
        backgroundColor: bgPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.status == SearchStatus.failure) {
                return const Center(child: Text('failed to fetch products'));
              } else if (state.status == SearchStatus.success) {
                if (state.searchedList.isEmpty) {
                  return const Center(child: Text('No more products'));
                }
                return Column(
                  children: [
                    const SizedBox(height: 24),
                    //  const CustomSearchField(),
                    Flexible(
                      child: GridView.builder(
                        controller: controller,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2 / 3.87,
                          crossAxisCount: 2,
                          crossAxisSpacing: 5,
                        ),
                        physics: const BouncingScrollPhysics(),
                        itemCount: state.hasReachedMax
                            ? state.searchedList.length
                            : state.searchedList.length + 2,
                        itemBuilder: (context, index) {
                          if (index >= state.searchedList.length) {
                            return Container(
                              alignment: Alignment.center,
                              child: const BottomLoader(),
                            );
                          } else {
                            return RowItem(
                              width: rowItemWidth,
                              homeItemModel: HomeItemModel(
                                title: state.searchedList[index].productName ??
                                    'Undefined',
                                kroy: state.searchedList[index].charge
                                        ?.currentCharge ??
                                    0,
                                bikroy: state.searchedList[index].charge
                                        ?.sellingPrice ??
                                    0,
                                lav: state.searchedList[index].charge?.profit ??
                                    0,
                                discount: state.searchedList[index].charge
                                        ?.discountCharge ??
                                    0,
                                image: state
                                    .searchedList[index].images!.first.image!,
                                stock: state.searchedList[index].stock! > 0
                                    ? true
                                    : false,
                              ),
                              productResult: Result(
                                productName:
                                    state.searchedList[index].productName,
                                brand: state.searchedList[index].brand,
                                seller: state.searchedList[index].seller,
                                images: state.searchedList[index].images!,
                                charge: Charge(
                                  currentCharge: state.searchedList[index]
                                      .charge!.currentCharge,
                                  sellingPrice: state
                                      .searchedList[index].charge!.sellingPrice,
                                  profit:
                                      state.searchedList[index].charge!.profit,
                                ),
                                description:
                                    state.searchedList[index].description,
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ],
                );
              } else {
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


/*
 return 
                */