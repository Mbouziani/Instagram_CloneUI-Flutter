import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/Data/storys.dart';
import 'package:instagram_clone/Screens/Account_Screen.dart';
import 'package:instagram_clone/Screens/Home_Screen.dart';
import 'package:instagram_clone/Screens/Likes_Screen.dart';
import 'package:instagram_clone/Screens/Search_Screen.dart';
import 'package:instagram_clone/Screens/Reel_Screen.dart';
import 'package:instagram_clone/Theme/Colors.dart';
import 'package:line_icons/line_icons.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({Key? key}) : super(key: key);

  @override
  _NavigatorScreenState createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int pageindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppbar(),
      body: getbody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getbody() {
    List<Widget> Screens = [
      HomeScreen(),
      SearchScreen(),
      ReelScreen(),
      LikesScreen(),
      AccountScreen(),
    ];
    return IndexedStack(
      index: pageindex,
      children: List.generate(Screens.length, (index) => Screens[index]),
    );
  }

  PreferredSizeWidget? getAppbar() {
    if (pageindex == 0) {
      return AppBar(
        backgroundColor: black,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Instagram",
              style: TextStyle(
                  color: white, fontFamily: 'Billabong', fontSize: 32),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/upload_icon.svg',
                  height: 23,
                ),
                SizedBox(
                  width: 20,
                ),
                SvgPicture.asset(
                  'assets/images/love_icon.svg',
                  height: 23,
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
          ],
        ),
      );
    } else if (pageindex == 1) {
      return null;
    } else if (pageindex == 2) {
      return null;
    } else if (pageindex == 3) {
      return AppBar(
        backgroundColor: black,
        centerTitle: true,
        title: const Text(
          "likes",
          style: TextStyle(color: white, fontSize: 25),
        ),
      );
    } else if (pageindex == 4) {
      return AppBar(
        backgroundColor: black,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  LineIcons.lock,
                  size: 18,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "bouziani.off",
                  style: TextStyle(color: white, fontSize: 20),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/upload_icon.svg',
                  height: 23,
                ),
                SizedBox(
                  width: 20,
                ),
                SvgPicture.asset(
                  'assets/images/drawer_icon.svg',
                  height: 20,
                  color: white,
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
          ],
        ),
      );
    }
    AppBar(
      backgroundColor: black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [],
      ),
    );
    return null;
  }

  Widget getFooter() {
    List svgicon = [
      pageindex == 0
          ? 'assets/images/home_active_icon.svg'
          : 'assets/images/home_icon.svg',
      pageindex == 1
          ? 'assets/images/search_active_icon.svg'
          : 'assets/images/search_icon.svg',
      pageindex == 2
          ? 'assets/images/reel_active_icon.svg'
          : 'assets/images/reel_icon.svg',
      pageindex == 3 ? 'assets/images/bag.svg' : 'assets/images/bag_icon.svg',
    ];

    return Container(
      height: 50.0,
      width: double.infinity,
      decoration: BoxDecoration(color: black),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            svgicon.length + 1,
            (index) {
              return index < 4
                  ? InkWell(
                      onTap: () {
                        SelectTab(index);
                      },
                      child: SvgPicture.asset(
                        svgicon[index],
                        width: 25,
                        color: white,
                      ))
                  : InkWell(
                      onTap: () {
                        SelectTab(index);
                      },
                      child: Container(
                        height: pageindex == 4 ? 29 : 33,
                        width: pageindex == 4 ? 29 : 33,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: pageindex == 4 ? white : black),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            height: pageindex == 4 ? 27 : 32,
                            width: pageindex == 4 ? 27 : 32,
                            decoration: BoxDecoration(
                                border: Border.all(color: black, width: 1),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(profile),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                    );
            },
          ),
        ),
      ),
    );
  }

  SelectTab(index) {
    setState(() {
      pageindex = index;
    });
  }
}
