import 'package:flutter/material.dart';

import 'search_bar.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
      child: Row(
        children: const [
          Icon(
            Icons.menu,
            size: 30,
          ),
          SizedBox(width: 25),
          Expanded(
            child: SearchBar(),
          ),
        ],
      ),
    );
  }
}
