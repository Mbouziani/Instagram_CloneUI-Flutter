import 'package:flutter/material.dart';
import 'package:instagram_clone/Data/storys.dart';
import 'package:instagram_clone/Theme/Colors.dart';
import 'package:instagram_clone/widget/Story_Item.dart';

class StoryBanner extends StatelessWidget {
  const StoryBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 10.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          border: Border.all(color: black, width: 2),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(profile), fit: BoxFit.cover)),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 19,
                          width: 19,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: white),
                          child: Icon(
                            Icons.add_circle,
                            color: buttonFollowColor,
                            size: 19,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Your Story',
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: white,
                      fontSize: 14),
                ),
              ],
            ),
          ),
          Row(
            children: List.generate(storys.length, (index) {
              return StoryItem(
                storyimg: storys[index]['image'],
                storyname: storys[index]['name'],
              );
            }),
          ),
        ],
      ),
    );
  }
}
