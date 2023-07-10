import 'package:api_nasa/Uteis/List%20Tiles%20Home/card_button.dart';

abstract class ListButtons {
  static List<ButtonCard> listHome = [
    const ButtonCard(
        image: 'assets/telescopio.png',
        title: 'Imagem Astronômica do dia'),
    const ButtonCard(
        image: 'assets/planeta-terra.png',
        title: 'Imagem policromática da Terra'),
    const ButtonCard(
        image: 'assets/marte.png',
        title: 'Serviço meteorológico de Marte'),
    const ButtonCard(
        image: 'assets/mars-rover.png', 
        title: 'Fotos do Mars Rover'),
    const ButtonCard(
        image: 'assets/satelite.png',
        title: 'Objetos em órbita terrestre'),
  ];
}
