import 'package:flutter/material.dart';
import 'package:shoe_apps/ui/pages/sign_in_page.dart';
import 'package:shoe_apps/ui/pages/sign_up_page.dart';
import 'package:shoe_apps/ui/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign_in': (context) => SignInPage(),
        '/sign_up': (context) => SignUpPage(),
      },
    );
  }
}
