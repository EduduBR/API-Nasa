import 'package:flutter/material.dart';
import '../../../Uteis/Global/Lists/global_list.dart';

class GridButton extends StatelessWidget {
  const GridButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.count(
      shrinkWrap: true,
          crossAxisCount: 3, 
          padding: const EdgeInsets.all(16.0), 
          crossAxisSpacing: 16.0, 
          mainAxisSpacing: 16.0, 
          children: GlobalList.listAPI,     
    );
  }
}