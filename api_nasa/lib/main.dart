import 'package:api_nasa/Model/Move/movement.dart';
import 'package:api_nasa/Uteis/Theme/theme.dart';
import 'package:api_nasa/View/Home/Screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => Movement(),
      child:  MaterialApp(
        theme: ThemeApp.appTheme,
        debugShowCheckedModeBanner: false,
        home: const HomePage()
      ),
    );
  }
}
