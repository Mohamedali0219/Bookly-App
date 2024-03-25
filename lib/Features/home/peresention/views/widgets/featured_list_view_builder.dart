import 'package:bookly_app/Features/home/peresention/manager/featuer_books_cubit/featuer_books_cubit.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/custom_book_image_item.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_message.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBookListViewBuilder extends StatelessWidget {
  const FeaturedBookListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatuerBooksCubit, FeatuerBooksState>(
      builder: (context, state) {
        if (state is FeatuerBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => CustomBookImageItem(
                imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail!,
              ),
            ),
          );
        } else if (state is FeatuerBooksFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return const CustomlaodingIndecator();
        }
      },
    );
  }
}
