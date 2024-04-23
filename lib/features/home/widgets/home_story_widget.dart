import 'package:flutter/material.dart';

class HomeStoryWidget extends StatelessWidget {
  const HomeStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(8, (index) {
          return Padding(
            padding: const EdgeInsets.only(
              right: 5,
              left: 5,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(
                    "assets/persons/person$index.JPG",
                  ),
                ),
                index == 0 ? const Text("Your Story") : Text("Person$index"),
              ],
            ),
          );
        }),
      ),
    );
  }
}
