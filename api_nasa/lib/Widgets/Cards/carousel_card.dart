import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Uteis/Color Palette/color_palette.dart';

class CarouselCard extends StatelessWidget {
  final String image;
  final String title;
  const CarouselCard({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 150,
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              ColorPalette.lightViolet,
              ColorPalette.violet,
              ColorPalette.darkViolet
            ],
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              scale: 5,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: GoogleFonts.openSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
