import 'package:api_nasa/Model/Move/movement.dart';
import 'package:api_nasa/View/Services/Mars%20Rover/Zoom/zoom.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class RoverCarrossel extends StatefulWidget {
  final List<String> list;
  const RoverCarrossel({Key? key, required this.list}) : super(key: key);

  @override
  State<RoverCarrossel> createState() => _RoverCarrosselState();
}

class _RoverCarrosselState extends State<RoverCarrossel> {
  @override
  Widget build(BuildContext context) {
    final List<String> list = widget.list.reversed.toList();
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.5,
        height: 200,
        enlargeCenterPage: true,
      ),
      items: list.asMap().entries.map((entry) {
        final int index = entry.key;

        return Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Provider.of<Movement>(context, listen: false)
                    .navigateToPage(context, Zoom(image: list[index]));
              },
              child: Center(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      list[index],
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child:
                              Lottie.asset('assets/animed/loadingimage.json'),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return _buildErrorIcon();
                      },
                    )),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildErrorIcon() {
    return Center(
      child: Image.asset(
        'assets/icons/erro.png',
        scale: 5,
      ),
    );
  }
}
