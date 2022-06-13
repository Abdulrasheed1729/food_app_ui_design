import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key? key,
    required this.foodName,
    required this.foodImagePath,
    required this.price,
    required this.rating,
    required this.time,
  }) : super(key: key);

  final String foodName;
  final String foodImagePath;
  final String price;
  final double rating;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      // margin: const EdgeInsets.all(10.0),
      child: Container(
        height: 250,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 90,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(
                      foodImagePath,
                    ),
                    fit: BoxFit.cover,
                    // alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 2.0),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                foodName,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, top: 5),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/star.svg',
                    height: 15,
                    width: 15,
                  ),
                  Text(
                    '\t:  ${rating.toString()}',
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset(
                    'assets/icons/truck-time.svg',
                    height: 15,
                    width: 15,
                  ),
                  Text(
                    '\t:  $time',
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, top: 5),
              child: Text(
                '\$ $price',
                style: const TextStyle(
                  // fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ),
            Expanded(child: Container()),
            Row(
              children: [
                Expanded(child: Container()),
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: kAccentColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/shopping-cart.svg',
                      color: Colors.white,
                      height: 20,
                      width: 20,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
