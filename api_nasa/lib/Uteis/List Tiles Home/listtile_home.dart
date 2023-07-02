
import 'package:api_nasa/Uteis/List%20Tiles%20Home/card_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

abstract class ListButtons {
  static List<Widget> listHome = [
    const ButtonCard(
        image: 'assets/telescopio.png',
        title: 'APOD: Imagem Astronómica do dia'),
    const SizedBox(width: 10),
    const ButtonCard(
        image: 'assets/planeta-terra.png',
        title: 'EPIC: Camera de imagem policromática da Terra'),
    const SizedBox(width: 10),
    const ButtonCard(
        image: 'assets/marte.png',
        title: 'InSight: API do serviço meteorológico de Marte'),
    const SizedBox(width: 10),
    const ButtonCard(
        image: 'assets/mars-rover.png', title: 'Fotos do Mars Rover'),
    const SizedBox(width: 10),
    const ButtonCard(
        image: 'assets/satelite.png',
        title:
            'TLE: Dados de elementos de duas linhas para objetos em órbita terrestre '),
    LottieBuilder.asset('assets/astronaut.json', height: 200)
  ];
}
