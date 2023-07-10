import 'package:api_nasa/Uteis/List%20Tiles%20Home/carrossel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(
        width: 286,
       
      ),
      body: ListView(
        children:  [
          LottieBuilder.asset('assets/foguete.json',height: 50,),
     const Carrossel()
        ],
      ),
    );
  }
}
