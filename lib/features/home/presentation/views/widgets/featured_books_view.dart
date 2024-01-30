import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/widgets/custom_loading_indicator.dart';
import 'package:untitled/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:untitled/features/home/presentation/manager/featured_books_cubit/featured_books_state.dart';

import 'featured_list_item.dart';
import 'home_view_body.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, i) => FeaturedListViewItem(
              imageUrl: state.books[i].volumeInfo!.imageLinks!.thumbnail!,
            ),
          ),
        );
      }
      if (state is FeaturedBooksFailure) {
        return Text(state.failure);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
