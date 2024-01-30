
import '../../../data/models/BookModel.dart';

abstract class FeaturedBooksState{
  const FeaturedBooksState();
}

class FeaturedBooksInitial extends FeaturedBooksState{}
class FeaturedBooksLoading extends FeaturedBooksState{}
class FeaturedBooksFailure extends FeaturedBooksState{
  final String failure;

  FeaturedBooksFailure(this.failure);
}
class FeaturedBooksSuccess extends FeaturedBooksState{
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}