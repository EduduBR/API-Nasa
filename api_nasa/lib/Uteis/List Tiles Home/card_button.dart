import 'package:flutter/material.dart';

import '../Color Palette/color_palette.dart';

class ButtonCard extends StatelessWidget {
  final String image;
  final String title;
  const ButtonCard({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Card(
        color: ColorPalette.lavender,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: ListTile(
            leading: Image.asset(
              image,
              scale: 15,
            ),
            title: Text(title),
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
