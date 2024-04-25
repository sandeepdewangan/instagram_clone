import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_clone/features/home/widgets/home_app_bar.dart';
import 'package:instagram_clone/features/home/widgets/home_story_widget.dart';
import 'package:instagram_clone/features/home/widgets/post_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar,
      body: Column(
        children: [
          // Story section
          const HomeStoryWidget(),
          const SizedBox(height: 10),
          // all post section
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return const PostWidget();
                },
              ),
            ),
          ),
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
