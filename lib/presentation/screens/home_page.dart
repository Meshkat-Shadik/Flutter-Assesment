import 'package:ecommerce_demo/constants.dart';
import 'package:ecommerce_demo/infrastructure/model/api_data_model.dart';
import 'package:ecommerce_demo/presentation/widgets/custom_search_field.dart';
import 'package:ecommerce_demo/presentation/widgets/row_widgets.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

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
              // ElevatedButton(
              //   onPressed: () async {
              //     const String baseUrl =
              //         'https://panel.supplyline.network/api/product/search-suggestions/?format=json&limit=10&offset=10';

              //     final res = await http.get(Uri.parse(baseUrl));

              //     final x = apiDataFromJson(res.body);
              //     print(
              //       x.data?.products?.results?.length.toString(),
              //     );
              //   },
              //   child: Text('get data'),
              // ),
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
