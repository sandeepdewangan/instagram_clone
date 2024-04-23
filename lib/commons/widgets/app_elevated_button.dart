import 'package:flutter/material.dart';
import 'package:instagram_clone/theme/palette.dart';

class AppElevatedButton extends StatelessWidget {
  final String text;
  final Color txtColor;
  final Color bkColor;
  final VoidCallback callback;

  const AppElevatedButton({
    super.key,
    required this.text,
    this.txtColor = Colors.white,
    required this.callback,
    this.bkColor = Pallete.blueColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bkColor,
      ),
      onPressed: callback,
      child: Text(
        text,
        style: TextStyle(
          color: txtColor,
        ),
      ),
    );
  }
}
