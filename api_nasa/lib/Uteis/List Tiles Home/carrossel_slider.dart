import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'card_button.dart';
import 'listtile_home.dart';

class Carrossel extends StatefulWidget {
  const Carrossel({super.key});

  @override
  State<Carrossel> createState() => _CarrosselState();
}

class _CarrosselState extends State<Carrossel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.6,
        height: 200,
        enlargeCenterPage: true,
      ),
      items: ListButtons.listHome.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return ButtonCard(
              image: i.image,
              title: i.title,
            );
          },
        );
      }).toList(),
    );
  }
}
