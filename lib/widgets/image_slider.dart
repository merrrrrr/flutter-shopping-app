import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {

	final myItems = [
		Image.asset('lib/images/thumbnail_1.webp'),
		Image.asset('lib/images/thumbnail_2.webp'),
		Image.asset('lib/images/thumbnail_3.webp'),
		Image.asset('lib/images/thumbnail_4.webp'),
	];

	int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
			child: Column(
				children: [
					CarouselSlider(
						options: CarouselOptions(
							autoPlay: true,
							aspectRatio: 1,
							viewportFraction: 1,
							enlargeCenterPage: true,
							onPageChanged: (index, reason) {
							  setState(() {
							    currentIndex = index;
							  });
							},
						),
						items: myItems,
					)
				],
			),
		);
  }
}