import 'dart:async';
import 'package:api_nasa/View/Services/Mars%20Rover/Carrosel/carrosel.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../../Model/Call API/api.dart';

class RoverStream extends StatefulWidget {
  const RoverStream({super.key});

  @override
  State<RoverStream> createState() => _RoverStreamState();
}

class _RoverStreamState extends State<RoverStream> {
  Stream<List<String>> roverStream() async* {
    List<String> imageUrls = await CallApi.rover();
    yield imageUrls;
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<String>>(
      stream: roverStream(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text('Erro: ${snapshot.error}'),
          );
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: LottieBuilder.asset('assets/animed/loading.json'),
          );
        }

        if (!snapshot.hasData) {
          return const Center(
            child: Text('Sem dados'),
          );
        }

        List<String> imageUrls = snapshot.data!;

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoverCarrossel(
              list: imageUrls,
            )
          ],
        );
      },
    );
  }
}
