import 'package:bookly_app/Features/home/peresention/views/widgets/custom_book_details_appbar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CustomBookDetailsApp(),
          ],
        ),
      )),
    );
  }
}
