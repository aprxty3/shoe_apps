import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_apps/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBg1,
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          header(),
        ],
      ),
    );
  }

  Widget header() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sign In',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: primaryTextColor,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
        ],
      ),
    );
  }
}
