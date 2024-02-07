
import '../../../data/models/BookModel.dart';

abstract class SimilarBooksState{
  const SimilarBooksState();
}

class SimilarBooksInitial extends SimilarBooksState{}
class SimilarBooksLoading extends SimilarBooksState{}
class SimilarBooksFailure extends SimilarBooksState{
  final String failure;

  SimilarBooksFailure(this.failure);
}
class SimilarBooksSuccess extends SimilarBooksState{
  final List<BookModel> books;

  SimilarBooksSuccess(this.books);
}