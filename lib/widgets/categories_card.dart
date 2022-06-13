import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    Key? key,
    required this.categoryName,
    required this.svgImagePath,
    this.cardBackgroundColor = kAccentColor,
    this.textColor = Colors.white,
  }) : super(key: key);
  final String svgImagePath;
  final String categoryName;
  final Color cardBackgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 2.0),
      child: Card(
        elevation: 5.0,
        child: Container(
          height: 80,
          width: 68,
          decoration: BoxDecoration(
            color: cardBackgroundColor,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  svgImagePath,
                  height: 30,
                  width: 30,
                ),
                const SizedBox(height: 5),
                Text(
                  categoryName,
                  style: TextStyle(
                    color: textColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
