// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/Data/post_json.dart';
import 'package:instagram_clone/Data/storys.dart';
import 'package:instagram_clone/Theme/Colors.dart';
import 'package:instagram_clone/widget/Post_Items.dart';
import 'package:instagram_clone/widget/Story_Banner.dart';
import 'package:instagram_clone/widget/Story_Item.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: black,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            StoryBanner(),
            Divider(
              height: 1,
              color: white.withOpacity(0.2),
            ),
            PostItems(),
          ],
        ),
      ),
    );
  }
}
