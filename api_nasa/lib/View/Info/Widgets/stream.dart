import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../Model/Call API/api.dart';
import '../../../Uteis/Global/Strings/globals_strings.dart';

class StreamData extends StatefulWidget {
  final String title;
  final String id;
  const StreamData({super.key, required this.title, required this.id});

  @override
  State<StreamData> createState() => _StreamDataState();
}

class _StreamDataState extends State<StreamData> {
  final StreamController<String> _streamController = StreamController<String>();

  @override
  void initState() {
    super.initState();
    CallApi.fetchData(_streamController, widget.id);
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

        String text = '${GlobString.inclination}\n${GlobString.mass}\n'
            '${GlobString.vol}\n${GlobString.density}\n${GlobString.gravity}\n'
            '${GlobString.escape}\n${GlobString.moon}';

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Informações sobre ${widget.title}',
                style: Theme.of(context).textTheme.bodyMedium),
            Text(text,
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        );
      },
    );
  }
}
