import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/navigation_constants.dart';
import 'package:instagram_clone/features/auth/pages/login_page.dart';
import 'package:instagram_clone/features/auth/pages/signup_page.dart';
import 'package:instagram_clone/features/home/pages/home_page.dart';
import 'package:instagram_clone/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram Clone',
        theme: AppTheme.theme,
        initialRoute: NavigationConstants.loginPage,
        routes: {
          NavigationConstants.loginPage: (context) => const LoginPage(),
          NavigationConstants.signupPage: (context) => const SignUpPage(),
          NavigationConstants.homePage: (context) => const HomePage(),
        },
      ),
    );
  }
}
