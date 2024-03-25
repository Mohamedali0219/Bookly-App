import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());

  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    final result = await homeRepo.fetchNewestBooks();

    result.fold(
      (fauiler) {
        emit(NewestBookFailure(errMessage: fauiler.message!));
      },
      (books) {
        emit(NewestBookSuccess(books: books));
      },
    );
  }
}
