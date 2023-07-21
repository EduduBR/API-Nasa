import 'package:api_nasa/Model/Call%20API/api.dart';
import 'package:api_nasa/Model/Move/movement.dart';
import 'package:api_nasa/View/Services/Mars%20Rover/Screen/rover.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../Color Palette/color_palette.dart';

class ButtonCardGrid extends StatelessWidget {
  final String image;
  final String title;
  const ButtonCardGrid({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 150,
      child: GestureDetector(
        onTap: () {
          Provider.of<Movement>(context, listen: false)
              .navigateToPage(context, RoverImage());
        },
        child: Container(
          decoration: BoxDecoration(
              color: ColorPalette.darkLavander,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: ColorPalette.violet, width: 1)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                scale: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
