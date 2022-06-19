import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_demo/constants.dart';
import 'package:ecommerce_demo/infrastructure/model/api_data_model.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({
    Key? key,
    required this.imageList,
  }) : super(key: key);

  final List<ApiImage> imageList;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 308.0,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
      ),
      items: imageList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width - 100,
              decoration: BoxDecoration(
                color: bgWhite,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Image.network(
                  imageList.first.image!,
                  height: 273,
                  width: 194,
                  fit: BoxFit.contain,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
