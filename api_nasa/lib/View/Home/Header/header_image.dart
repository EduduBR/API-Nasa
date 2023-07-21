import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationX(3.14159),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.elliptical(300, 30),
          topRight: Radius.elliptical(300, 30),
        ),
        child: Image.asset('assets/terra.jpg'),
      ),
    );
  }
}
