import 'package:api_nasa/Uteis/Global/Boolean/boolean.dart';
import 'package:api_nasa/Uteis/List%20Tiles%20Home/listtile_home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../Uteis/Color Palette/color_palette.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.grey,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: Boolean.light
                ? ColorPalette.lightGalaxy
                : ColorPalette.darkGalaxy,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            LottieBuilder.asset('assets/stars.json'),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ListView(
                children: ListButtons.listHome,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            child: Image.asset('assets/${Boolean.light ? 'luacheia.png':'lua.png'}',scale: 8),
            onTap: () {
              setState(() {
                Boolean.light = !Boolean.light;
              });
            },
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
