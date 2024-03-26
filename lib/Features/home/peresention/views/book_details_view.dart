import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/peresention/manager/similar_book_cubit/similar_book_cubit.dart';
import 'package:bookly_app/Features/home/peresention/views/widgets/book_details_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  //!this way to mkae trigger to fetch data form my cubit form the same page
  void initState() {
    BlocProvider.of<SimilarBookCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo!.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BookDetailsViewBody(bookModel: widget.bookModel);
  }
}
