import 'package:flutter/material.dart';
import 'package:instagram_clone/theme/palette.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final controller = TextEditingController();

  AppTextField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.grey.shade100,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Pallete.blueColor,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        contentPadding: const EdgeInsets.all(15),
      ),
    );
  }
}
