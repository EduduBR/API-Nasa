import 'package:api_nasa/Model/Move/movement.dart';
import 'package:api_nasa/Uteis/Color%20Palette/color_palette.dart';
import 'package:api_nasa/View/Home/Screen/homepage.dart';
import 'package:api_nasa/View/Info/Widgets/stream.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InfoLounge extends StatefulWidget {
  final String nameUrl;
  final String title;
  final Color color;
  const InfoLounge(
      {super.key,
      required this.nameUrl,
      required this.title,
      required this.color});

  @override
  State<InfoLounge> createState() => _InfoLoungeState();
}

class _InfoLoungeState extends State<InfoLounge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          backgroundColor: widget.color,
          title: Text(widget.title,
              style: GoogleFonts.openSans(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          leading: IconButton(
              onPressed: () => Provider.of<Movement>(context, listen: false)
                  .navigateToPage(context, const HomePage()),
              icon: const Icon(Icons.arrow_back_ios))),
      body: ListView(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: Image.asset('assets/image_planet/${widget.nameUrl}.jpg'),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: widget.color),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: 
                  InfoStream(
                    title: widget.title,
                    id: widget.nameUrl,
                  )
              
            
            ),
          )
        ],
      ),
    );
  }
}
