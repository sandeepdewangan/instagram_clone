import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/features/home/widgets/home_app_bar.dart';
import 'package:instagram_clone/features/home/widgets/home_story_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar,
      body: const Column(
        children: [
          // Story section
          HomeStoryWidget(),
          // TODO: display all post section
        ],
      ),
      // bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          _bottomNavigationBarItem(
            label: "home",
            icon: Icons.home,
          ),
          _bottomNavigationBarItem(
            label: "search",
            icon: Icons.search,
          ),
          _bottomNavigationBarItem(
            label: "add",
            icon: Icons.add_box_outlined,
          ),
          _bottomNavigationBarItem(
            label: "reels",
            icon: Icons.video_collection_outlined,
          ),
          _bottomNavigationBarItem(
            label: "account",
            icon: Icons.account_circle_outlined,
          ),
        ],
      ),
    );
  }
}

BottomNavigationBarItem _bottomNavigationBarItem({
  required String label,
  required IconData icon,
  Color color = Colors.black,
}) =>
    BottomNavigationBarItem(
      label: label,
      icon: Icon(
        icon,
        color: color,
        size: 30,
      ),
    );
