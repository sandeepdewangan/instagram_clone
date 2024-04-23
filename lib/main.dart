import 'package:flutter/material.dart';
import 'package:instagram_clone/features/auth/login_page.dart';
import 'package:instagram_clone/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      home: const SafeArea(
        child: LoginPage(),
      ),
    );
  }
}
