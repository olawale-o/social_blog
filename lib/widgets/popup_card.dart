import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/models.dart';
import '../colors/colors.dart';

class PopUpCard extends StatelessWidget {
  final bool popBox;
  final VoidCallback onBoxPop;
  const PopUpCard({Key? key, required this.popBox, required this.onBoxPop }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () => onBoxPop(),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.transparent,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: AnimatedSize(
                duration: const Duration(seconds: 2),
                child: Container(
                  height: popBox ? 340 : 0,
                  width: popBox ? MediaQuery.of(context).size.width / 1.6 : 0,
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(width: 1.0, color: Colors.grey.shade600),
                              )
                          ),
                          child: Column(
                              children: List.generate(contacts.sublist(2).length, (int i) => Container(
                                margin: const EdgeInsets.only(bottom: 16.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(contacts[i].image),
                                    ),
                                    SizedBox(width: 10.0,),
                                    Text(contacts[i].fullName,
                                      style: GoogleFonts.lato(
                                        fontSize: 16.0,
                                        color: Colors.grey.shade600,
                                        // fontWeight: FontWeight.w800
                                      ),)
                                  ],
                                ),
                              )).toList()
                          ),
                        ),
                      ),
                      // SizedBox(height: 18.0,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: [
                            Icon(Icons.person, color: blueColor,),
                            SizedBox(width: 4.0,),
                            Text("All friends", style: GoogleFonts.lato(
                                fontSize: 16.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.w800
                            ),)
                          ],
                        ),
                      ),
                      //SizedBox(height: 18.0,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: [
                            Icon(Icons.add, color: blueColor,),
                            SizedBox(width: 4.0,),
                            Text("New group chat",
                              style: GoogleFonts.lato(
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w800
                              ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
