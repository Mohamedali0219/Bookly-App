import 'package:bookly_app/core/utils/assests.dart';
import 'package:flutter/material.dart';

class SpalshViewBody extends StatelessWidget {
  const SpalshViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment
          .stretch, //? cross axis stretch to make the children to stretch take all the space width of screen
      children: [
        Image.asset(AssetsData.logo),
      ],
    );
  }
}
