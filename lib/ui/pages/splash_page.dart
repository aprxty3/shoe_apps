import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoe_apps/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/sign_in');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBg1,
      body: Center(
        child: Image.asset(
          'assets/image_splash.png',
          width: 150,
        ),
      ),
    );
  }
}
