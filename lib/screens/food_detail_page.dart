import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ui/constants.dart';

class FoodDetailPage extends StatelessWidget {
  const FoodDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const DetailPageAppBar(),
                const SizedBox(height: 15),
                Container(
                  height: 275,
                  width: 300,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage(
                        'assets/images/pexels-rajesh-tp-1633578.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Chicky Cheese',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 60,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/star.svg'),
                          Text(
                            ' : 4.9',
                            style: TextStyle(
                              color: Colors.grey.shade700,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(child: Container())
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Signatur burger made with a crunchy\nchicken fillet, veggies, double cheddar\ncheese & a delicious mayo sauce.',
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '\$ 6,700',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/minus-cirlce.svg',
                          height: 30,
                          width: 30,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '0',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 10),
                        SvgPicture.asset(
                          'assets/icons/add-circle.svg',
                          height: 30,
                          width: 30,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    constraints: const BoxConstraints(minHeight: 45),
                    fillColor: kAccentColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/shopping-cart.svg',
                          color: Colors.black,
                        ),
                        const SizedBox(width: 10),
                        const Text('Add to cart'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetailPageAppBar extends StatelessWidget {
  const DetailPageAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        // left: 20.0,
        // right: 20.0,
        top: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.chevron_left_rounded,
              size: 30,
            ),
          ),
          const Text(
            'Details',
            style: TextStyle(
              fontSize: 20,
              // fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              // color: Colors.grey,
            ),
          ),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/heart.svg',
                height: 20,
                width: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
