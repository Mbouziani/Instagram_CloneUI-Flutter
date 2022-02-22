import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/Data/post_json.dart';
import 'package:instagram_clone/Theme/Colors.dart';
import 'package:line_icons/line_icons.dart';

class PostItems extends StatelessWidget {
  const PostItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
      posts.length,
      (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      NetworkImage(posts[index]['profileImg']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          posts[index]['name'],
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    Icon(
                      LineIcons.verticalEllipsis,
                      color: white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 400.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(posts[index]['postImg']),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          posts[index]['isLoved']
                              ? 'assets/images/loved_icon.svg'
                              : 'assets/images/love_icon.svg',
                          height: 25,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                          'assets/images/comment_icon.svg',
                          height: 25,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                          'assets/images/message_icon.svg',
                          height: 25,
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      'assets/images/save_icon.svg',
                      height: 25,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: posts[index]['likedBy'] == null
                                ? ''
                                : 'Liked by ',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: white,
                                fontSize: 14),
                          ),
                          TextSpan(
                            text: posts[index]['likedBy'] == null
                                ? ''
                                : posts[index]['likedBy'],
                            style: TextStyle(
                                color: white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                          TextSpan(
                            text:
                                posts[index]['likedBy'] == null ? '' : ' and ',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: white,
                                fontSize: 14),
                          ),
                          TextSpan(
                            text: posts[index]['Likescount'],
                            style: TextStyle(
                                color: white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '${posts[index]['name']}',
                            style: TextStyle(
                                color: white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                          TextSpan(
                            text: '${posts[index]['caption']}',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: white,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "View all ${posts[index]['commentCount']} Comments",
                      style: TextStyle(
                          color: white.withOpacity(0.5),
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      posts[index]['timeAgo'],
                      style: TextStyle(
                          color: white.withOpacity(0.5),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    ));
  }
}
