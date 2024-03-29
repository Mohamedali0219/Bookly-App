import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/books_actions.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/custom_book_image_item.dart';
import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widthScreen * 0.2),
          child: CustomBookImageItem(
            imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ??
                'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-980x653.jpg',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          bookModel.volumeInfo!.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo!.authors![0],
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookModel.volumeInfo!.pageCount!,
          count: bookModel.volumeInfo!.pageCount!,
        ),
        const SizedBox(
          height: 37,
        ),
        BooksAction(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
