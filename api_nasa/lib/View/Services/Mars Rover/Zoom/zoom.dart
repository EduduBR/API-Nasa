import 'package:api_nasa/Uteis/Color%20Palette/color_palette.dart';
import 'package:api_nasa/View/Services/Mars%20Rover/Screen/rover.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../Model/Move/movement.dart';

class Zoom extends StatelessWidget {
  final String image;
  const Zoom({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.darkGrey,
        leading: IconButton(
          onPressed: () => Provider.of<Movement>(context, listen: false)
              .navigateToPage(context, RoverImage()),
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Image.network(image),
        ),
      ),
    );
  }
}
