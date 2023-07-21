import 'package:api_nasa/Uteis/Color%20Palette/color_palette.dart';
import 'package:api_nasa/View/Home/Carrosel/carrossel_api.dart';
import 'package:api_nasa/View/Home/Header/header_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Grid/grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
       const HeaderImage() ,
        ListView(
          children: [
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 15),
              child: Text(
                'Informações',
                textAlign: TextAlign.start,
                style: GoogleFonts.openSans(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const Carrossel(),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Serviços',
                textAlign: TextAlign.start,
                style: GoogleFonts.openSans(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: ColorPalette.violet),
              ),
            ),
            const GridButton()
          ],
        )
      ]),
    );
  }
}
