import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/Data/Reels_json.dart';
import 'package:instagram_clone/Data/search.dart';
import 'package:instagram_clone/Data/storys.dart';
import 'package:instagram_clone/Theme/Colors.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:line_icons/line_icons.dart';

class ReelScreen extends StatelessWidget {
  const ReelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView.builder(
        itemCount: ReelsData.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => ReelItem(index: index),
      ),
    );
  }
}

class ReelItem extends StatelessWidget {
  const ReelItem({
    required this.index,
    Key? key,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.maxFinite,
          decoration: BoxDecoration(
            color: black,
            image: DecorationImage(
                image: NetworkImage(
                  ReelsData[index]['ContentImg'], //ContentImg
                ),
                fit: BoxFit.cover),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.0),
                  ])),
              height: 80.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Reels",
                      style: TextStyle(
                          color: white.withOpacity(0.98),
                          fontSize: 25,
                          fontWeight: FontWeight.w800),
                    ),
                    SvgPicture.asset(
                      'assets/images/camera_icon.svg',
                      height: 28,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.5)
                  ])),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Column(
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
                                      image: NetworkImage(
                                        ReelsData[index]['UserImg'], //Username
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              ReelsData[index]['Username'], //Username
                              style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                  ReelsData[index]['isFollowed']
                                      ? 'Followed'
                                      : 'Follow', //isFollowed
                                  style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w600,
                                  )),
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                side: const BorderSide(
                                  width: 1.5,
                                  color: white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                              end: 15.0, start: 5),
                          child: ExpandableText(
                            ReelsData[index]['Contentcontent'],
                            expandText: '',
                            style: TextStyle(
                                color: white,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                            collapseText: '',
                            expandOnTextTap: true,
                            collapseOnTextTap: true,
                            maxLines: 2,
                            linkColor: white.withOpacity(0.5),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.music_note,
                              size: 18,
                              color: white,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: ReelsData[index]['MusicOwner'],
                                style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              ),
                              const TextSpan(
                                text: ' • ',
                                style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              ),
                              TextSpan(
                                text: ReelsData[index]['Musicname'],
                                style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              ),
                            ])),
                          ],
                        )
                      ],
                    ),
                  )),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        SvgPicture.asset(
                          'assets/images/love_icon.svg',
                          height: 28,
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          ReelsData[index]['LikesCount'],
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SvgPicture.asset(
                          'assets/images/comment_icon.svg',
                          height: 28,
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          ReelsData[index]['CommentCount'],
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SvgPicture.asset(
                          'assets/images/message_icon.svg',
                          height: 28,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Icon(
                          LineIcons.verticalEllipsis,
                          color: white,
                          size: 25,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                                border: Border.all(color: white, width: 2),
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    (BorderRadius.all(Radius.circular(7))),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      ReelsData[index]['MusicImg'],
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
