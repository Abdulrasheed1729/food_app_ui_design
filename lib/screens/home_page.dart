import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ui/constants.dart';
import 'package:food_ui/models/category.dart';
import 'package:food_ui/screens/food_detail_page.dart';
import 'package:food_ui/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(color: Theme.of(context).primaryColor),
        selectedItemColor: kAccentColor,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/home-2.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/shopping-cart.svg'),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/book.svg'),
            label: 'Order',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TopAppBar(),
            const HeadlineText(text: 'Recommended'),
            const CarouselCard(),
            const HeadlineText(text: 'Categories'),
            SizedBox(
              height: 85,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoriesCard(
                      svgImagePath: Category.categories[0].svgImagePath,
                      categoryName: Category.categories[0].categoryName,
                    ),
                    CategoriesCard(
                      svgImagePath: Category.categories[1].svgImagePath,
                      categoryName: Category.categories[1].categoryName,
                      cardBackgroundColor: Colors.white,
                      textColor: Colors.black,
                    ),
                    CategoriesCard(
                      svgImagePath: Category.categories[2].svgImagePath,
                      categoryName: Category.categories[2].categoryName,
                      cardBackgroundColor: Colors.white,
                      textColor: Colors.black,
                    ),
                    CategoriesCard(
                      svgImagePath: Category.categories[3].svgImagePath,
                      categoryName: Category.categories[3].categoryName,
                      cardBackgroundColor: Colors.white,
                      textColor: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: .7355,
                  shrinkWrap: true,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const FoodDetailPage(),
                          ),
                        );
                      },
                      child: const FoodCard(
                        foodName: 'Chicky Cheese',
                        foodImagePath:
                            'assets/images/pexels-rajesh-tp-1633578(1).png',
                        price: '6,700',
                        rating: 4.7,
                        time: '12 mins',
                      ),
                    ),
                    const FoodCard(
                      foodName: 'Zinger Burger',
                      foodImagePath:
                          'assets/images/pexels-ron-lach-8879373.png',
                      price: '5,000',
                      rating: 4.9,
                      time: '10 mins',
                    ),
                    const FoodCard(
                      foodName: 'Yam Burger',
                      foodImagePath:
                          'assets/images/pexels-ron-lach-8879373.png',
                      price: '1,500',
                      rating: 5.0,
                      time: '5 mins',
                    ),
                    const FoodCard(
                      foodName: 'Chicky Cheese',
                      foodImagePath:
                          'assets/images/pexels-rajesh-tp-1633578(1).png',
                      price: '6,700',
                      rating: 4.7,
                      time: '12 mins',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
