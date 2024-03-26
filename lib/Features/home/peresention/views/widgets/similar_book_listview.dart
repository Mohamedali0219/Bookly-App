import 'package:bookly_app/Features/home/peresention/manager/similar_book_cubit/similar_book_cubit.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/custom_book_image_item.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_message.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => CustomBookImageItem(
                imageUrl: state
                        .books[index].volumeInfo!.imageLinks?.thumbnail ??
                    'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-980x653.jpg',
              ),
            ),
          );
        } else if (state is SimilarBookFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return const CustomLaodingIndecator();
        }
      },
    );
  }
}
