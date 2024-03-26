import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/colors.dart';
import 'package:bookly_app/core/utils/functions/luncher_url.dart';
import 'package:bookly_app/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            onPressed: () {},
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(16),
              topLeft: Radius.circular(16),
            ),
            bakcgroundColor: Colors.white,
            textColor: Colors.black,
            text: 'Free',
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () {
              lunchCustomUrl(context, bookModel.volumeInfo!.previewLink);
            },
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            bakcgroundColor: AppColors.buttonColor,
            textColor: Colors.white,
            text: getText(bookModel),
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo!.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Read';
    }
  }
}
