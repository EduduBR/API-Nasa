import 'package:api_nasa/Uteis/Color%20Palette/color_palette.dart';
import 'package:api_nasa/Widgets/Cards/carousel_card.dart';
import 'package:api_nasa/View/Info/Screen/info.dart';

import '../../../Widgets/Cards/grid_card.dart';

class GlobalList {
  static List<GridCard> listAPI = [
    const GridCard(
        image: 'assets/icons/telescopio.png',
        title: 'Imagem Astronômica do dia'),
    const GridCard(
        image: 'assets/icons/terra.png',
        title: 'Imagem policromática da Terra'),
    const GridCard(
        image: 'assets/icons/marte.png',
        title: 'Serviço meteorológico de Marte'),
    const GridCard(
        image: 'assets/icons/mars-rover.png', title: 'Fotos do Mars Rover'),
    const GridCard(
        image: 'assets/icons/satelite.png',
        title: 'Objetos em órbita terrestre'),
    const GridCard(image: 'assets/icons/explosao.png', title: 'Explosão Solar')
  ];

  static List<CarouselCard> listCarrosel = [
    const CarouselCard(image: 'assets/icons/sol.png', title: 'Sol'),
    const CarouselCard(image: 'assets/icons/mercurio.png', title: 'Mercúrio'),
    const CarouselCard(image: 'assets/icons/venus.png', title: 'Vênus'),
    const CarouselCard(image: 'assets/icons/terra.png', title: 'Terra'),
    const CarouselCard(image: 'assets/icons/marte.png', title: 'Marte'),
    const CarouselCard(image: 'assets/icons/jupiter.png', title: 'Júpiter'),
    const CarouselCard(image: 'assets/icons/saturno.png', title: 'Saturno'),
    const CarouselCard(image: 'assets/icons/urano.png', title: 'Urano'),
    const CarouselCard(image: 'assets/icons/netuno.png', title: 'Netuno')
  ];

  static List<InfoLounge> infolounge = [
    const InfoLounge(
      nameUrl: 'sun',
      title: 'Sol',
      color: ColorPalette.darkOrange,
    ),
    const InfoLounge(
        nameUrl: 'mercury', title: 'Mercúrio', color: ColorPalette.orange),
    const InfoLounge(
        nameUrl: 'venus', title: 'Vênus', color: ColorPalette.lightbrown),
    const InfoLounge(
      nameUrl: 'earth',
      title: 'Terra',
      color: ColorPalette.green,
    ),
    const InfoLounge(nameUrl: 'mars', title: 'Marte', color: ColorPalette.red),
    const InfoLounge(
      nameUrl: 'jupiter',
      title: 'Júpiter',
      color: ColorPalette.lightbrown,
    ),
    const InfoLounge(
      nameUrl: 'saturn',
      title: 'Saturno',
      color: ColorPalette.darkbrown,
    ),
    const InfoLounge(
      nameUrl: 'uranus',
      title: 'Urano',
      color: ColorPalette.blueOpaco,
    ),
    const InfoLounge(
      nameUrl: 'neptune',
      title: 'Netuno',
      color: ColorPalette.blue,
    )
  ];

 
}
