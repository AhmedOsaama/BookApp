import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/core/utils/service_locator.dart';
import 'package:untitled/features/home/data/models/BookModel.dart';
import 'package:untitled/features/home/data/repo/home_repo.dart';
import 'package:untitled/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:untitled/features/home/presentation/views/book_details_view.dart';
import 'package:untitled/features/home/presentation/views/home_view.dart';

import '../../features/home/data/repo/home_repo_impl.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter{
  static const kHomeView = "/homeView";
  static const kBookDetails = "/bookDetails";
  static const kSearchView = "/searchView";

  static final router = GoRouter(
      routes: [
        GoRoute(
          path: "/",
          builder: (context, state) => const SplashView(),
        ),
        GoRoute(
          path: kSearchView,
          builder: (context, state) => const SearchView(),
        ),
        GoRoute(
          path: kHomeView,
          builder: (context, state) => const HomeView(),
        ),
        GoRoute(
          path: kBookDetails,
          builder: (context, state) => BlocProvider(
            create: (ctx) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
              child: BookDetailsView(
                bookModel: state.extra as BookModel,
              )),
        )
      ]
  );

}