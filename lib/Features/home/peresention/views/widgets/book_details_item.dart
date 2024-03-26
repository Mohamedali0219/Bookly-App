import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/custom_book_image_item.dart';
import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsItem extends StatelessWidget {
  const BookDetailsItem({super.key, this.bookModel});
  final BookModel? bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.kBookDetailsView);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            CustomBookImageItem(
                imageUrl: bookModel!.volumeInfo!.imageLinks!.thumbnail ??
                    'https://img.freepik.com/free-psd/book-hardcover-mockup_125540-382.jpg?size=626&ext=jpg&ga=GA1.1.2020960441.1706407803&semt=sph'),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    //! i but it with sizedbox because i want same size in all item if i dont care with sized i but it in fitted box
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      bookModel!.volumeInfo!.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel!.volumeInfo!.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Free',
                        style: Styles.textStyle20,
                      ),
                      const Spacer(),
                      BookRating(
                        rating: bookModel!.volumeInfo!.pageCount!,
                        count: bookModel!.volumeInfo!.pageCount!,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
