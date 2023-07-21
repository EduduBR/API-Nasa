import 'package:api_nasa/Uteis/Color%20Palette/color_palette.dart';
import 'package:api_nasa/Uteis/Widgets/Cards/card_button.dart';
import 'package:api_nasa/View/Info/Screen/info.dart';


import '../../Widgets/card_button_grid.dart';

class GlobalList {
  static List<ButtonCardGrid> listAPI = [
    const ButtonCardGrid(
        image: 'assets/icons/telescopio.png',
        title: 'Imagem Astronômica do dia'),
    const ButtonCardGrid(
        image: 'assets/icons/terra.png',
        title: 'Imagem policromática da Terra'),
    const ButtonCardGrid(
        image: 'assets/icons/marte.png',
        title: 'Serviço meteorológico de Marte'),
    const ButtonCardGrid(
        image: 'assets/icons/mars-rover.png', title: 'Fotos do Mars Rover'),
    const ButtonCardGrid(
        image: 'assets/icons/satelite.png',
        title: 'Objetos em órbita terrestre'),
    const ButtonCardGrid(
        image: 'assets/icons/explosao.png', title: 'Explosão Solar')
  ];

  static List<ButtonCard> listCarrosel = [
    const ButtonCard(image: 'assets/icons/sol.png', title: 'Sol'),
    const ButtonCard(image: 'assets/icons/mercurio.png', title: 'Mercúrio'),
    const ButtonCard(image: 'assets/icons/venus.png', title: 'Vênus'),
    const ButtonCard(image: 'assets/icons/terra.png', title: 'Terra'),
    const ButtonCard(image: 'assets/icons/marte.png', title: 'Marte'),
    const ButtonCard(image: 'assets/icons/jupiter.png', title: 'Júpiter'),
    const ButtonCard(image: 'assets/icons/saturno.png', title: 'Saturno'),
    const ButtonCard(image: 'assets/icons/urano.png', title: 'Urano'),
    const ButtonCard(image: 'assets/icons/netuno.png', title: 'Netuno')
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

  static List<String> roverList = [];
}
