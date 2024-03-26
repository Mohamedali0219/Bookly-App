import 'package:bookly_app/Features/home/peresention/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/books_actions.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/custom_book_image_item.dart';
import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widthScreen * 0.2),
          child: const CustomBookImageItem(
            imageUrl:
                'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-980x653.jpg',
          ),
        ),
        const SizedBox(
          height: 48,
        ),
        const Text(
          'The Great Gatsby',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        const Opacity(
          opacity: 0.7,
          child: Text(
            'By F. Scott Fitzgerald',
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 4,
          count: 132,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
