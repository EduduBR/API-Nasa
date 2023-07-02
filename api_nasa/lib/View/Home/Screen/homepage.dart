

import 'package:api_nasa/View/Home/Screen/home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),drawer:Drawer(child: Home(),width: 286,
  
  ) ,);
  }
}