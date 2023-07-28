import 'package:api_nasa/Uteis/Color%20Palette/color_palette.dart';
import 'package:api_nasa/View/Services/Mars%20Rover/Stream/stream.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../Model/Move/movement.dart';
import '../../../Home/Screen/homepage.dart';

class RoverImage extends StatefulWidget {
  const RoverImage({super.key});

  @override
  State<RoverImage> createState() => _RoverImageState();
}

class _RoverImageState extends State<RoverImage> {
  String text = 'O Mars Rover leva tempo para atualizar as imagens devido à distância entre Marte e a Terra, resultando em uma transmissão de dados mais lenta.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ColorPalette.red,
          centerTitle: true,
          title: Text('Mars Rover',
              style:Theme.of(context).textTheme.bodyMedium),
          leading: IconButton(
              onPressed: () => Provider.of<Movement>(context, listen: false)
                  .navigateToPage(context, const HomePage()),
              icon: const Icon(Icons.arrow_back_ios))),
      body: ListView(children: [
        Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image.asset('assets/marsrover.jpg'),
              Padding(
                padding: const EdgeInsets.only(left: 15,bottom: 15),
                child: Text(
                  'Fotos do Mars Rover',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.titleMedium
              ),),
              const RoverStream(),
              Container(
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: ColorPalette.blueOpaco,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(text,textAlign: TextAlign.center,
              style:Theme.of(context).textTheme.bodySmall),
                ),
              )
            ]))
      ]),
    );
  }
}
