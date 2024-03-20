import 'package:bookly_app/Features/home/peresention/views/widgets/books_details_section.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: CustomScrollView(slivers: [
              SliverFillRemaining(
                child: Column(
                  children: [
                    CustomBookDetailsApp(),
                    BookDetailsSection(),
                    Expanded(
                      child: SizedBox(
                        height: 37,
                      ),
                    ),
                    SimilarBooksSection()
                  ],
                ),
              )
            ])),
      ),
    );
  }
}
