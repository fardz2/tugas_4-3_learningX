import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:tugas_4_3/app/modules/home/views/favorite_view.dart';
import 'package:tugas_4_3/app/modules/home/views/main_view.dart';
import 'package:tugas_4_3/app/modules/home/views/message_view.dart';
import 'package:tugas_4_3/app/modules/home/views/post_view.dart';
import 'package:tugas_4_3/app/modules/home/views/profile_view.dart';

class HomeController extends GetxController {
  final PersistentTabController controllerPersistentTabController =
      PersistentTabController(initialIndex: 0);
  final List<Map<String, String>> images = [
    {
      "image": "images/nature02.png",
      "name": "Ankita",
      "job": "Software Engineer",
      "tag": "#programming",
      "caption": "Enjoying the view",
      "location": "Mountain Peak",
      "time": "2 hours ago",
      "favorite": "15",
      "comment": "5",
      "liked": "50",
    },
    {
      "image": "images/orang2.png",
      "name": "Manish",
      "job": "UI/UX Designer",
      "tag": "#design",
      "caption": "Exploring new horizons",
      "location": "Beach",
      "time": "3 hours ago",
      "favorite": "20",
      "comment": "8",
      "liked": "200",
    },
    {
      "image": "images/orang3.png",
      "name": "Priya",
      "job": "Photographer",
      "tag": "#photography",
      "caption": "Capturing moments",
      "location": "City Park",
      "time": "5 hours ago",
      "favorite": "25",
      "comment": "10",
      "liked": "170",
    },
    {
      "image": "images/orang4.png",
      "name": "Rahul",
      "job": "Marketing Manager",
      "tag": "#marketing",
      "caption": "Making connections",
      "location": "Business District",
      "time": "8 hours ago",
      "favorite": "18",
      "comment": "6",
      "liked": "100",
    },
  ];

  List<Widget> buildScreens() {
    return [
      const MainView(),
      const MessageView(),
      const PostView(),
      const FavoriteView(),
      const ProfileView()
    ];
  }

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.chat_bubble),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          CupertinoIcons.add,
          color: Colors.white,
        ),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.heart),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.profile_circled),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}
