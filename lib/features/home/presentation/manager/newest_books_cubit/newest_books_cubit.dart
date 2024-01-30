
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repo/home_repo.dart';
import 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  final HomeRepo homeRepo;
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
        (failure) => emit(NewestBooksFailure(failure.errorMessage)),
            (books) => emit(NewestBooksSuccess(books))
    );
  }
}
