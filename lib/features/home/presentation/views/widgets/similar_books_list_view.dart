import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/utils/assets.dart';
import 'package:untitled/core/widgets/custom_loading_indicator.dart';
import 'package:untitled/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:untitled/features/home/presentation/manager/similar_books_cubit/similar_books_state.dart';

import 'custom_book_image.dart';


class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if(state is SimilarBooksSuccess) {
          return SizedBox(
          height: MediaQuery.of(context).size.height * .15,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail!,),
                );
              }),
        );
        }
        if(state is SimilarBooksFailure) {
          return Center(child: Text(state.failure));
        }
        return const CustomLoadingIndicator();
      }
    );
  }
}