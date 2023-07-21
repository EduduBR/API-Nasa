import 'package:api_nasa/Model/Move/movement.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Uteis/Widgets/Cards/card_button.dart';
import '../../../Uteis/Global/Lists/global_list.dart';
class Carrossel extends StatefulWidget {
  const Carrossel({Key? key}) : super(key: key);

  @override
  State<Carrossel> createState() => _CarrosselState();
}

class _CarrosselState extends State<Carrossel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.6,
        height: 200,
        enlargeCenterPage: true,
      ),
      items: GlobalList.listCarrosel.asMap().entries.map((entry) {
        final int index = entry.key;
        final ButtonCard item = entry.value;
        return Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Provider.of<Movement>(context, listen: false)
                    .navigateToPage(context, GlobalList.infolounge[index]);
              },
              child: ButtonCard(
                image: item.image,
                title: item.title,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}