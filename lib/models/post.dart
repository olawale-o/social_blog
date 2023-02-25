import 'contact.dart';

class Post {
  final String text;
  final Contact contact;
  final String duration;
  final int likeCount;
  final int commentCount;
  final List<Contact> likedBy;

  Post({
    required this.text,
    required this.contact,
    required this.duration,
    required this.likeCount,
    required this.commentCount,
    required this.likedBy
  });
}

var posts = <Post>[
  Post(
      text: "Working on a large project \n"
          "I was thinking about \n"
          "potential features and tools \n"
          "that could be added \n"
          "to Figma. One of them is BreakPoints",
      contact: contacts[1],
      duration: "4mins ago",
      likeCount: 25,
      commentCount: 13,
      likedBy: contacts.sublist(0, 3),
  ),
  Post(
      text: "Putting an exact expiry date \n"
          "on Python would be so \n"
          "much speculation \n"
          ", it might as well pass as \n"
          "Science-Fiction, Instead, i will access \n"
          "the virtues that are boosting Python's \n"
          "popularity right now, and the \n weak points that will \n"
          "break it in the future",
      contact: contacts[1],
      duration: "15hrs ago",
      likeCount: 25,
      commentCount: 13,
      likedBy: contacts.sublist(3),
  ),
];