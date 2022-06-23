import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_demo/application/api_data/api_data_bloc.dart';
import 'package:ecommerce_demo/application/search/search_bloc.dart';
import 'package:ecommerce_demo/constants.dart';
import 'package:ecommerce_demo/presentation/widgets/bottom_loader.dart';
import 'package:ecommerce_demo/presentation/widgets/common_gridview.dart';
import 'package:ecommerce_demo/presentation/widgets/custom_search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeSearchReusable extends HookWidget {
  const HomeSearchReusable({
    this.isHomePage,
    Key? key,
  }) : super(key: key);

  final bool? isHomePage;

  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();
    void onScroll() {
      if (controller.position.maxScrollExtent == controller.offset) {
        if (isHomePage == null) {
          BlocProvider.of<ApiDataBloc>(context)
              .add(const ApiDataEvent.watchAllstarted());
        } else {
          BlocProvider.of<SearchBloc>(context)
              .add(const SearchEvent.searchButtonPressed());
        }
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
        appBar: isHomePage != null
            ? AppBar(
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
                  BlocProvider.of<SearchBloc>(context)
                          .state
                          .searchInput
                          .isValid()
                      ? 'Searched Result for ' +
                          BlocProvider.of<SearchBloc>(context)
                              .state
                              .searchInput
                              .getOrCrash()
                      : '',
                  style: dBrandDistributorValueStyle,
                ),
              )
            : AppBar(
                backgroundColor: bgPrimaryColor,
                elevation: 0,
              ),
        backgroundColor: bgPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: isHomePage != null
              ? BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    if (state.status == SearchStatus.failure) {
                      return const Center(
                          child: Text('failed to fetch products'));
                    } else if (state.status == SearchStatus.success) {
                      if (state.searchedList.isEmpty) {
                        return const Center(child: Text('No more products'));
                      }
                      return Column(
                        children: [
                          const SizedBox(height: 24),
                          CommonGridView(
                            controller: controller,
                            rowItemWidth: rowItemWidth,
                            dataList: state.searchedList,
                            hasReachedMax: state.hasReachedMax,
                          ),
                        ],
                      );
                    } else {
                      return const LoadingWidget();
                    }
                  },
                )
              : BlocBuilder<ApiDataBloc, ApiDataState>(
                  builder: (context, state) {
                    if (state.status == ApiStatus.failure) {
                      return const Center(
                          child: Text('failed to fetch products'));
                    } else if (state.status == ApiStatus.success) {
                      if (state.productList.isEmpty) {
                        return const Center(child: Text('No more products'));
                      }
                      return Column(
                        children: [
                          const CustomSearchField(),
                          CommonGridView(
                            controller: controller,
                            rowItemWidth: rowItemWidth,
                            dataList: state.productList,
                            hasReachedMax: state.hasReachedMax,
                          ),
                        ],
                      );
                    } else {
                      return const LoadingWidget();
                    }
                  },
                ),
        ),
      ),
    );
  }
}
