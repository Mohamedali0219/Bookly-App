part of 'featuer_books_cubit.dart';

sealed class FeatuerBooksState extends Equatable {
  const FeatuerBooksState();

  @override
  List<Object> get props => [];
}

final class FeatuerBooksInitial extends FeatuerBooksState {}

final class FeatuerBooksLoading extends FeatuerBooksState {}

final class FeatuerBooksSuccess extends FeatuerBooksState {
  final List<BookModel> books;

  const FeatuerBooksSuccess({required this.books});
}

final class FeatuerBooksFailure extends FeatuerBooksState {
  final String errMessage;
  const FeatuerBooksFailure({required this.errMessage});
}
