import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

List<AssetImage> images =
    Iterable.generate(3).map((i) => AssetImage('assets/${i + 1}.jpg')).toList();

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1.1,
        height: 300,
        enableInfiniteScroll: true,
      ),
      items: images.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: image, fit: BoxFit.cover)),
            );
          },
        );
      }).toList(),
    );
  }
}
