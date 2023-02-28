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
      text: "Working on a large project I was thinking about potential features and tools that could be added to Figma. One of them is BreakPoints",
      contact: contacts[1],
      duration: "4mins ago",
      likeCount: 25,
      commentCount: 13,
      likedBy: contacts.sublist(0, 3),
  ),
  Post(
      text: "Putting an exact expiry date on Python would be so much speculation, it might as well pass as Science-Fiction, Instead, i will access the virtues that are boosting Python's popularity right now, and the weak points that will break it in the future",
      contact: contacts[1],
      duration: "15hrs ago",
      likeCount: 25,
      commentCount: 13,
      likedBy: contacts.sublist(3),
  ),
];