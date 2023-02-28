import 'package:flutter/material.dart';
import '../colors/colors.dart';

class CustomFab extends StatelessWidget {
  const CustomFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: blueColor.withOpacity(0.85),
        ),
        child: Icon(Icons.comment, color: Colors.white),
      ),
    );
  }
}
