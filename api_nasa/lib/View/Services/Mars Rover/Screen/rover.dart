import 'package:api_nasa/Uteis/Color%20Palette/color_palette.dart';
import 'package:api_nasa/View/Services/Mars%20Rover/Stream/stream.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../../../Model/Move/movement.dart';
import '../../../Home/Screen/homepage.dart';

const text =
    '''A frequência com que as imagens do Mars Rover são atualizadas depende de vários fatores, incluindo o funcionamento das próprias sondas, a disponibilidade de energia, a saúde dos instrumentos e outros fatores técnicos. Além disso, as imagens capturadas pelas sondas não são constantemente transmitidas à Terra, pois isso requer tempo e recursos de comunicação.''';

class RoverImage extends StatefulWidget {
  const RoverImage({super.key});

  @override
  State<RoverImage> createState() => _RoverImageState();
}

class _RoverImageState extends State<RoverImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorPalette.red,
          centerTitle: true,
          title: Text('Mars Rover',
              style: GoogleFonts.openSans(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          leading: IconButton(
              onPressed: () => Provider.of<Movement>(context, listen: false)
                  .navigateToPage(context, const HomePage()),
              icon: const Icon(Icons.arrow_back_ios))),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                const RoverStream(),
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: ColorPalette.golden),
                  child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(text,
                          style: GoogleFonts.openSans(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
