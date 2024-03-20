import 'package:bookly_app/core/utils/assests_data.dart';
import 'package:flutter/material.dart';

class CustomBookImageItem extends StatelessWidget {
  const CustomBookImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AspectRatio(
        aspectRatio: 2.6 / 4, //?  =>[ width / heigth ]
        child: Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
                image: AssetImage(AssetsData.imageTest), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
