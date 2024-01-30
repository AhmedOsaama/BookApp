
import '../../../data/models/BookModel.dart';

abstract class NewestBooksState{
  const NewestBooksState();
}

class NewestBooksInitial extends NewestBooksState{}
class NewestBooksLoading extends NewestBooksState{}
class NewestBooksFailure extends NewestBooksState{
  final String failure;

  NewestBooksFailure(this.failure);
}
class NewestBooksSuccess extends NewestBooksState{
  final List<BookModel> books;

  NewestBooksSuccess(this.books);
}