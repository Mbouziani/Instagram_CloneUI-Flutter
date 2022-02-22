import 'package:flutter/material.dart';
import 'package:instagram_clone/Theme/Colors.dart';

class LikesScreen extends StatelessWidget {
  const LikesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appFooterColor,
      child: const Center(
        child: Text(
          "Likes",
          style: TextStyle(color: white, fontSize: 30),
        ),
      ),
    );
  }
}
