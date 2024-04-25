import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Post header
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          width: double.infinity,
          height: 50,
          color: Colors.white70,
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  "assets/persons/person2.JPG",
                ),
              ),
              SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Person 2",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  Text(
                    "Location",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.more_horiz,
                  ),
                ),
              ),
            ],
          ),
        ),
        // Post body
        Container(
          width: double.infinity,
          height: 450,
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(
                "assets/persons/person2.JPG",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Post footer
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          width: double.infinity,
          height: 90,
          color: Colors.white70,
          child: const Column(
            children: [
              // like share and bookmark
              Row(
                children: [
                  Icon(
                    Icons.favorite_border_outlined,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.comment_bank_outlined,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.send_outlined,
                    size: 30,
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.bookmark_add_outlined,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              // Liked by.
              Row(
                children: [
                  Align(
                    widthFactor: 0.5,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundImage: AssetImage(
                        "assets/persons/person1.JPG",
                      ),
                    ),
                  ),
                  Align(
                    widthFactor: 0.5,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundImage: AssetImage(
                        "assets/persons/person2.JPG",
                      ),
                    ),
                  ),
                  Align(
                    widthFactor: 0.5,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundImage: AssetImage(
                        "assets/persons/person3.JPG",
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text("Liked by "),
                  Text(
                    "sandeep and 42 others",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Text("26 March 2024"),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
