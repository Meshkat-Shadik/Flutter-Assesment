import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_demo/application/search/search_bloc.dart';
import 'package:ecommerce_demo/constants.dart';
import 'package:ecommerce_demo/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: bgWhite,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Flexible(
            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                return Form(
                  autovalidateMode: state.showErrorMessages,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'কাঙ্ক্ষিত পণ্যটি খুঁজুন',
                      border: InputBorder.none,
                    ),
                    autocorrect: false,
                    onChanged: (val) {
                      BlocProvider.of<SearchBloc>(context).add(
                        SearchEvent.searchChanged(val),
                      );
                    },
                    validator: (_) =>
                        context.read<SearchBloc>().state.searchInput.value.fold(
                              (l) => l.when(
                                invalidSearch: (_) => 'Invalid Search Key',
                                empty: (_) => 'Empty',
                              ),
                              (r) => null,
                            ),
                  ),
                );
              },
            ),
          ),
          IconButton(
            onPressed: () async {
              BlocProvider.of<SearchBloc>(context).add(
                const SearchEvent.searchButtonPressed(),
              );
              BlocProvider.of<SearchBloc>(context).state.searchInput.value.fold(
                    (l) => null,
                    (r) => context.router.push(
                      const SearchScreenRoute(),
                    ),
                  );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }

//   @override
//   Widget wrappedRoute(BuildContext context) {
//     return BlocProvider.value(
//       value: BlocProvider.of<ApiDataBloc>(context).add(
//         ApiDataEvent.searchPressed(),
//       ),
//       child: this,
//     );
//   }
// }
}
