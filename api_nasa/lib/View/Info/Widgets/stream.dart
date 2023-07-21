import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import '../../../Model/Call API/api.dart';
import '../../../Uteis/Global/Strings/globals_strings.dart';

class InfoStream extends StatefulWidget {
  final String title;
  final String id;
  const InfoStream({super.key, required this.title, required this.id});

  @override
  State<InfoStream> createState() => _InfoStreamState();
}

class _InfoStreamState extends State<InfoStream> {
  final StreamController<String> _streamController = StreamController<String>();

  @override
  void initState() {
    super.initState();
    CallApi.fetchData(
      _streamController,widget.id
    );
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: _streamController.stream,
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
        String inclination = GlobalsString.inclination;
        String mass = GlobalsString.mass;
        String vol = GlobalsString.vol;
        String density = GlobalsString.density;
        String gravity = GlobalsString.gravity;
        String escape = GlobalsString.escape;
        String moon = GlobalsString.moon;

        String text =
            '$inclination\n$mass\n$vol\n$density\n$gravity\n$escape\n$moon';
        text = text.replaceAll('{', '').replaceAll('}', '');

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Informações sobre ${widget.title}',
                style: GoogleFonts.openSans(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Text(text,
                textAlign: TextAlign.start,
                style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white)),
          ],
        );
      },
    );
  }
}
