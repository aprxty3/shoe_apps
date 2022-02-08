import 'package:flutter/material.dart';
import 'package:shoe_apps/theme.dart';

class CategoriesWidget extends StatelessWidget {
  final String category;
  const CategoriesWidget({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      height: 40,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 0.7,
          color: secondaryTextColor,
        ),
      ),
      child: Text(
        category,
        style: TextStyle(
          fontSize: 13,
          fontWeight: medium,
          color: primaryTextColor,
        ),
      ),
    );
  }
}
