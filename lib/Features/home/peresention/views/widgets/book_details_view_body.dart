import 'package:bookly_app/Features/home/peresention/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/books_actions.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/custom_book_image_item.dart';
import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const CustomBookDetailsApp(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: widthScreen * 0.2),
                child: const CustomBookImageItem(),
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
              ),
              const SizedBox(
                height: 37,
              ),
              const BooksAction(),
            ],
          ),
        ),
      ),
    );
  }
}
