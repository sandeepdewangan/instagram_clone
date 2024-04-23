import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar homeAppBar = AppBar(
  title: SvgPicture.asset("assets/svgs/instagram-text-icon.svg"),
  automaticallyImplyLeading: false,
  actions: const [
    Padding(
      padding: EdgeInsets.only(
        right: 20,
      ),
      child: Icon(
        Icons.favorite_border,
        size: 30,
      ),
    ),
    Padding(
      padding: EdgeInsets.only(
        right: 20,
      ),
      child: Icon(
        Icons.message_outlined,
        size: 30,
      ),
    ),
  ],
);
