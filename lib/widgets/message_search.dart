import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MessageSearch extends StatelessWidget {
  const MessageSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Messages", style: GoogleFonts.lato(
            fontSize: 24.0,
            fontWeight: FontWeight.w900
          ) ,),
          Icon(Icons.search)
        ],
      ),
    );
  }
}
