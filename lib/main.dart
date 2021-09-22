// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp( MyFirstApp());

class MyFirstApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final urlImages = [
      'assets/images/svg1.svg',
      'assets/images/svg1.svg',
      'assets/images/svg1.svg',
      'assets/images/svg1.svg',
      // 'https://seoportal.net/images/baza/izobrazheniya/svg/svg-primer.svg',
      // 'https://seoportal.net/images/baza/izobrazheniya/svg/svg-primer.svg',
      // 'https://seoportal.net/images/baza/izobrazheniya/svg/svg-primer.svg',
      // 'https://seoportal.net/images/baza/izobrazheniya/svg/svg-primer.svg',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Good job!!')),
        body: Center(
          child: CarouselSlider.builder(
              options: CarouselOptions(height: 500),
              itemCount: urlImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages[index];
                return buildImage(urlImage, index);
              },
          ),
        ),
      ),
    );
  }
  Widget buildImage(String urlImage, int index) => Container (
    margin: EdgeInsets.symmetric(horizontal: 10),
    color: Colors.black,
    child: SvgPicture.asset(
    //child: SvgPicture.network(
        urlImage,
      width: 200,
    ),
  );
}
