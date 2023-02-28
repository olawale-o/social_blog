import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../colors/colors.dart';
import '../models/models.dart';

class PostCard extends StatelessWidget {
  final Post post;
  const PostCard({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 20.0, bottom: 20.0),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.grey.shade100
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(post.contact.image),
              ),
              SizedBox(width: 12.0,),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(post.contact.fullName, style: GoogleFonts.lato(
                          fontWeight: FontWeight.w900,
                          fontSize: 16.0
                        ),),
                        Text(post.duration, style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700,
                            fontSize: 12.0,
                          color: darkGreyColor
                        ),)
                      ],
                    ),
                    Icon(Icons.more_horiz_sharp)
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              post.text,
              textAlign: TextAlign.justify,
              style: GoogleFonts.lato(
                fontSize: 14.0,
                fontWeight: FontWeight.w700,
                height: 1.5
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
            child: Stack(
              children: List.generate(post.likedBy.length, (int i) => Positioned(
                left: (i * (1 - .4) * 40).toDouble(),
                top: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundImage: AssetImage(post.likedBy[i].image),
                  radius: 18,
                ),
              )).toList(),
            ),
          ),
          Divider(color: Colors.grey.shade400, height: 2.0,),
          Padding(
            padding: const EdgeInsets.only(top: 14.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: blueColor.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Icon(Icons.favorite, color: blueColor.withOpacity(0.8),),
                      ),
                      Text("${post.likeCount} likes",
                      style: GoogleFonts.lato(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: blueColor
                      ),)
                    ],
                  ),
                ),
                SizedBox(width: 25.0,),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Icon(Icons.mode_comment_outlined, color: lightGreyColor,),
                      ),
                      Text("${post.commentCount} comments")
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
