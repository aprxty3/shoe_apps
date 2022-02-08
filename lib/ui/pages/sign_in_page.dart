import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_apps/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
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
            Text(
              'Sign In to Continue',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: secondaryTextColor,
              ),
            )
          ],
        ),
      );
    }

    Widget email() {
      return Container(
        margin: const EdgeInsets.only(top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: suggestStyle,
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: primaryColor,
                  width: 1,
                ),
                color: kBg2,
              ),
              child: TextFormField(
                style: TextStyle(
                  color: primaryTextColor,
                  fontWeight: regular,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: primaryColor,
                      width: 1,
                    ),
                  ),
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(
                    color: secondaryTextColor,
                  ),
                  prefixIcon: Icon(
                    Icons.mail,
                    color: primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget password() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: suggestStyle,
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: primaryColor,
                  width: 1,
                ),
                color: kBg2,
              ),
              child: TextFormField(
                obscureText: true,
                style: TextStyle(
                  color: primaryTextColor,
                  fontWeight: regular,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: primaryColor,
                      width: 1,
                    ),
                  ),
                  hintText: 'Enter password',
                  hintStyle: TextStyle(
                    color: secondaryTextColor,
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        height: 50,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Sign In',
            style: buttonStyle,
          ),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/home', (route) => false);
          },
        ),
      );
    }

    Widget register() {
      return Container(
        margin: const EdgeInsets.only(top: 350),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an Account?',
              style: TextStyle(
                fontSize: 12,
                fontWeight: regular,
                color: secondaryTextColor,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sign_up');
              },
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: regular,
                  color: primaryColor,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBg1,
      resizeToAvoidBottomInset: true,
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          header(),
          email(),
          password(),
          button(),
          register(),
        ],
      ),
    );
  }
}
