class Category {
  final String svgImagePath;
  final String categoryName;

  const Category({
    required this.categoryName,
    required this.svgImagePath,
  });

  static const categories = <Category>[
    Category(categoryName: 'Burger', svgImagePath: 'assets/icons/burger-8.svg'),
    Category(categoryName: 'Pizza', svgImagePath: 'assets/icons/pizza-2-6.svg'),
    Category(categoryName: 'Course', svgImagePath: 'assets/icons/dish.svg'),
    Category(categoryName: 'Drinks', svgImagePath: 'assets/icons/drink.svg'),
  ];
}
