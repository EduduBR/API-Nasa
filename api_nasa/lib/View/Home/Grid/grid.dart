import 'package:flutter/material.dart';

import '../../../Uteis/Global/Lists/global_list.dart';


class GridButton extends StatelessWidget {
  const GridButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.count(
      shrinkWrap: true,
          crossAxisCount: 3, // Define o número de colunas
          padding: const EdgeInsets.all(16.0), // Define o espaçamento interno
          crossAxisSpacing: 16.0, // Define o espaçamento horizontal entre os itens
          mainAxisSpacing: 16.0, // Define o espaçamento vertical entre os itens
          children: GlobalList.listAPI,
        
      
    );
  }
}