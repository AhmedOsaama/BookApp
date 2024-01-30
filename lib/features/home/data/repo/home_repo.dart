import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../models/BookModel.dart';

abstract class HomeRepo{
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({ required String category});
}