import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          constraints: const BoxConstraints(
            maxHeight: 45,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
            borderSide: BorderSide.none,
          ),
          fillColor: kSearchBarColor.withOpacity(.5),
          filled: true,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 15,
            ),
            child: SvgPicture.asset(
              'assets/icons/search-normal.svg',
              height: 25,
              width: 25,
            ),
          ),
          hintText: 'burger,chips,...'),
    );
  }
}
