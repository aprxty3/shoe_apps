import 'package:flutter/material.dart';
import 'package:shoe_apps/ui/widget/categories_widget.dart';

import '../../../theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(right: 30, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hallo, Alex',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: semiBold,
                    color: primaryTextColor,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '@alexkeinn',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: regular,
                    color: secondaryTextColor,
                  ),
                ),
              ],
            ),
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: secondaryColor,
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Icon(
                  Icons.person,
                  size: 52,
                  color: primaryTextColor,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              CategoriesWidget(
                category: 'All Shoes',
              ),
              CategoriesWidget(
                category: 'Running',
              ),
              CategoriesWidget(
                category: 'Training',
              ),
              CategoriesWidget(
                category: 'Basketball',
              ),
              CategoriesWidget(
                category: 'Hiking',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBg1,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 30),
        child: Column(
          children: [
            header(),
            categories(),
          ],
        ),
      ),
    );
  }
}
