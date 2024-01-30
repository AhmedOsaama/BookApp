
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/core/constants.dart';
import 'package:untitled/core/utils/app_router.dart';
import 'package:untitled/core/utils/service_locator.dart';
import 'package:untitled/features/home/data/repo/home_repo_impl.dart';
import 'package:untitled/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:untitled/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
       BlocProvider(create: (ctx) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())),
       BlocProvider(create: (ctx) => NewestBooksCubit(getIt.get<HomeRepoImpl>())),
      ],
      child:  MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      ),
    );
  }
}

