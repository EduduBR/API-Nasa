
import 'package:flutter/material.dart';

class Movement {

  void navigateToPage(context, page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}



}