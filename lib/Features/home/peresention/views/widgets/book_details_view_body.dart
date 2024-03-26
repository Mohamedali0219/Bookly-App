import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/books_details_section.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                child: Column(
                  children: [
                    const CustomBookDetailsApp(),
                    BookDetailsSection(
                      bookModel: bookModel,
                    ),
                    const SizedBox(height: 10),
                    const SimilarBooksSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
