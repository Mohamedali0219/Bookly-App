import 'package:bookly_app/Features/home/peresention/views/widgets/book_details_item.dart';
import 'package:flutter/material.dart';

class BestSellerListViewBuilder extends StatelessWidget {
  const BestSellerListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView.builder(
          //  shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: BookDetailsItem(),
            );
          }),
    );
  }
}
