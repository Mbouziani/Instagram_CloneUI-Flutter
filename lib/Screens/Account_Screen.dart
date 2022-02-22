// ignore_for_file: file_names

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Data/storys.dart';
import 'package:instagram_clone/Theme/Colors.dart';
import 'package:instagram_clone/widget/Story_Item.dart';
import 'package:line_icons/line_icons.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
          color: black,
          child: Column(
            children: [
              ProfileHeader(),
              SizedBox(
                height: 20,
              ),
              tabheader(),
              tabbody(),
            ],
          )),
    );
  }
}

class tabheader extends StatelessWidget {
  const tabheader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(indicatorColor: white, tabs: [
      Tab(icon: Icon(LineIcons.table)),
      Tab(icon: Icon(LineIcons.userCircle)),
    ]);
  }
}

class tabbody extends StatelessWidget {
  const tabbody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: [
          // first tab bar view widget
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: white.withOpacity(0.8), width: 2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  LineIcons.plus,
                  color: white.withOpacity(0.8),
                  size: 35,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'Profile',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: white.withOpacity(0.9),
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90.0),
                child: Text(
                  "When you share photos and vedios, they'll appear on your profile.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: white.withOpacity(0.4),
                      fontSize: 14),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Share your first photo or video',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 12, 97, 207),
                    fontSize: 16),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: white.withOpacity(0.8), width: 2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  LineIcons.userTag,
                  color: white.withOpacity(0.8),
                  size: 35,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'Profile',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: white.withOpacity(0.9),
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Text(
                  "When somone montion you in his photos or vedios, they'll appear on your profile.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: white.withOpacity(0.4),
                      fontSize: 14),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(profile), fit: BoxFit.cover)),
              ),
              Column(
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: white,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Posts',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: white,
                        fontSize: 14),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '131',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: white,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Followers',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: white,
                        fontSize: 14),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '39',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: white,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Following',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: white,
                        fontSize: 14),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Mohammed bouziani',
            style: TextStyle(
                fontWeight: FontWeight.w600, color: white, fontSize: 16),
          ),
          SizedBox(
            height: 5,
          ),
          ExpandableText(
            'Bouziani.Offi',
            expandText: 'more',
            style: TextStyle(
                color: white, fontWeight: FontWeight.w400, fontSize: 14),
            collapseText: 'less',
            expandOnTextTap: true,
            collapseOnTextTap: true,
            maxLines: 2,
            linkColor: white.withOpacity(0.5),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 38,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text('Edit profile', //isFollowed
                        style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.w400,
                        )),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3)),
                      side: BorderSide(
                        width: 1,
                        color: white.withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                height: 38,
                width: 50,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Icon(
                    LineIcons.userPlus,
                    color: white,
                    size: 18,
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                    side: BorderSide(
                      width: 1,
                      color: white.withOpacity(0.3),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: white.withOpacity(0.3),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 63,
                        width: 63,
                        decoration: BoxDecoration(
                            border: Border.all(color: black, width: 2),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(profile),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Oujda',
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: white,
                        fontSize: 14),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Container(
                    height: 63,
                    width: 63,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: white.withOpacity(0.4), width: 1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      LineIcons.plus,
                      color: white.withOpacity(0.8),
                      size: 22,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'New',
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: white,
                        fontSize: 14),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
