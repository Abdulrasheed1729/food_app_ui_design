import 'package:flutter/material.dart';

class CategoriesText extends StatelessWidget {
  const CategoriesText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 25.0,
        top: 10,
        bottom: 10.0,
      ),
      child: Text(
        'Categories',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
