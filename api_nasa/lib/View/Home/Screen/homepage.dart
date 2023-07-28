import 'package:api_nasa/View/Home/Carrosel/carrossel_api.dart';
import 'package:api_nasa/View/Home/Header/header_image.dart';
import 'package:flutter/material.dart';
import '../Grid/grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const HeaderImage(),
          ListView(
            children: [
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 15),
                child: Text(
                  'Informações',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const Carrossel(),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text('Serviços',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.titleSmall),
              ),
              const GridButton()
            ],
          )
        ],
      ),
    );
  }
}
