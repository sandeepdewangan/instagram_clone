import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/commons/widgets/app_elevated_button.dart';
import 'package:instagram_clone/commons/widgets/app_text_field.dart';
import 'package:instagram_clone/constants/navigation_constants.dart';
import 'package:instagram_clone/theme/palette.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 30.0,
            ),
            child: Column(
              children: [
                // Instagram logo
                SvgPicture.asset(
                  "assets/svgs/instagram-text-icon.svg",
                  height: 70,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                // text fields
                AppTextField(hintText: "Enter Username"),
                const SizedBox(
                  height: 10,
                ),
                AppTextField(hintText: "Enter Password"),
                const SizedBox(
                  height: 15.0,
                ),
                // forgot password
                const Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: Pallete.blueColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                // Login button
                SizedBox(
                  width: double.infinity,
                  child: AppElevatedButton(
                    text: 'Log in',
                    txtColor: Colors.white,
                    callback: () => Navigator.of(context).pushNamed(
                      NavigationConstants.homePage,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.facebook,
                      color: Pallete.blueColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Login with facebook",
                      style: TextStyle(
                        color: Pallete.blueColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Divider(),
                const SizedBox(
                  height: 15.0,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed(
                    NavigationConstants.signupPage,
                  ),
                  child: RichText(
                    text: const TextSpan(
                      text: 'Dont have account? ',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'Sign up',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Pallete.blueColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
