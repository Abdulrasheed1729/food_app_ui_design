import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

const imageList = <String>[
  'assets/images/junk 1.png',
  'assets/images/pexels-rajesh-tp-1633578.png',
  'assets/images/junk 1.png',
  'assets/images/pexels-rajesh-tp-1633578.png',
  'assets/images/junk 1.png',
];

final List<Widget> imageSliders = imageList
    .map(
      (item) => Card(
        elevation: 3.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Container(
          height: 240,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: AssetImage(item),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 300,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.65),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: .5, sigmaY: .5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8.0,
                            top: 5,
                            bottom: 5,
                          ),
                          child: Text(
                            'Krabby Combo Burger',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Burger, Chips & milkshake',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w800,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('\$ 6,700'),
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
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    )
    .toList();

class CarouselCard extends StatefulWidget {
  const CarouselCard({Key? key}) : super(key: key);

  @override
  State<CarouselCard> createState() => _CarouselCardState();
}

class _CarouselCardState extends State<CarouselCard> {
  int _current = 0;
  final CarouselController _carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          carouselController: _carouselController,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            height: 200,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageList.asMap().entries.map(
            (entry) {
              return GestureDetector(
                onTap: () => _carouselController.animateToPage(entry.key),
                child: Container(
                  width: _current == entry.key ? 15.0 : 10,
                  height: 5.0,
                  margin: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 4.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(10.0),
                      right: Radius.circular(10.0),
                    ),
                    color: Theme.of(context)
                        .colorScheme
                        .secondary
                        .withOpacity(_current == entry.key ? 0.9 : 0.6),
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
