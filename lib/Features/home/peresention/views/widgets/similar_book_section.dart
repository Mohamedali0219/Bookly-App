import 'package:bookly_app/Features/home/peresention/views/widgets/similar_book_listview.dart';
import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like this',
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBookListView(),
        const SizedBox(
          height: 40,
        )
      ],
    );
  }
}
