import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featuer_books_state.dart';

class FeatuerBooksCubit extends Cubit<FeatuerBooksState> {
  FeatuerBooksCubit(this.homeRepo) : super(FeatuerBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold(
        (fauiler) => {emit(FeatuerBooksFailure(errMessage: fauiler.message!))},
        (books) => {emit(FeatuerBooksSuccess(books: books))});
  }
}
