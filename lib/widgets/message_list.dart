import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../colors/colors.dart';
import '../models/models.dart';

class MessageList extends StatelessWidget {
  const MessageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        // shrinkWrap: true,
        itemCount: contacts.length,
        itemBuilder: (BuildContext context, int i) => Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            image: DecorationImage(
                                image: AssetImage(contacts[i].image),
                                fit: BoxFit.cover
                            )
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: lightGreyColor
                              )
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(contacts[i].fullName, style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16.0
                              ),),
                              SizedBox(height: 8.0),
                              Row(
                                children: [
                                  Text(contacts[i].lastMessage,
                                    style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 12.0,
                                      color: lightGreyColor,
                                    ),),
                                  Text(" . "),
                                  Text(contacts[i].duration,
                                    style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 12.0,
                                      color: lightGreyColor,
                                    ),),
                                ],
                              )
                            ],
                          ),
                          contacts[i].unreadMessages != null ? Container(
                            width: 20.0,
                            height: 20.0,
                            decoration: BoxDecoration(
                                color: blueColor,
                                borderRadius: BorderRadius.circular(50.0)
                            ),
                            alignment: Alignment.center,
                            child: Text("${contacts[i].unreadMessages}",
                              style: GoogleFonts.lato(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w900
                              ),)

                          ) : Container()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}
