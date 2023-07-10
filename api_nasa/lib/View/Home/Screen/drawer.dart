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
      body:Container()
    );
  }
}
