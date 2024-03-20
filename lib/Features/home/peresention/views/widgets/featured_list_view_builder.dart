import 'package:bookly_app/Features/home/peresention/views/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';

class FeaturedBookListViewBuilder extends StatelessWidget {
  const FeaturedBookListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImageItem(),
      ),
    );
  }
}
