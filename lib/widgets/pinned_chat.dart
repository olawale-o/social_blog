import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/models.dart';
import "../colors/colors.dart";

class PinnedChat extends StatelessWidget {
  const PinnedChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Pinned", style: GoogleFonts.lato(
            fontSize: 16.0,
            color: lightGreyColor,
            fontWeight: FontWeight.w900
          ),),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              image: DecorationImage(
                                  image: AssetImage(pinnedChat.image),
                                  fit: BoxFit.cover
                              )
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 20.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(pinnedChat.fullName, style: GoogleFonts.lato(
                            fontWeight: FontWeight.w900,
                            fontSize: 16.0
                        ),),
                        SizedBox(height: 8.0),
                        Row(
                          children: [
                            Text(pinnedChat.lastMessage,
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w900,
                                fontSize: 12.0,
                                color: lightGreyColor,
                              ),),
                            Text(" . "),
                            Text(pinnedChat.duration,
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w900,
                                fontSize: 12.0,
                                color: lightGreyColor,
                              ),),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.circular(50.0)
                  ),
                  alignment: Alignment.center,
                  child: Text("${pinnedChat.unreadMessages}",
                  style: GoogleFonts.lato(
                    color: whiteColor,
                    fontWeight: FontWeight.w900
                  ),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
