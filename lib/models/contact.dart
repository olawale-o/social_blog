class Contact {
  final String fullName;
  final String image;
  final String duration;
  final String lastMessage;
  final int? unreadMessages;

  Contact({
    required this.fullName,
    required this.image,
    required this.duration,
    required this.lastMessage,
    this.unreadMessages,
  });
}

var contacts = <Contact>[
  Contact(
    fullName: "Wendy Watson",
    image: "lib/assets/profile_one.jpg",
    duration: "12m",
    lastMessage: "We need to meet today",
    unreadMessages: 12,
  ),
  Contact(
    fullName: "Harold Howard",
    image: "lib/assets/profile_one.jpg",
    duration: "1h",
    lastMessage: "Check mail please"
  ),
  Contact(
    fullName: "Connie Larnie",
    image: "lib/assets/profile_three.jpg",
    duration: "yesterday",
    lastMessage: "Where are you ?"
  ),
  Contact(
    fullName: "Kathryn Alexander",
    image: "lib/assets/profile_four.jpg",
    duration: "yesterday",
    lastMessage: "Alright"
  ),
  Contact(
    fullName: "Bernard Nguyen",
    image: "lib/assets/profile_five.jpg",
    duration: "2d",
    lastMessage: "is typing..."
  ),
  Contact(
    fullName: "Nathan Fox",
    image: "lib/assets/profile_six.jpg",
    duration: "4d",
    lastMessage: "Thank you so much"
  ),
];