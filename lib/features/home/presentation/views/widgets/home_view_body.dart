import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/core/utils/app_router.dart';
import 'package:untitled/core/utils/assets.dart';
import 'package:untitled/core/utils/styles.dart';
import 'package:untitled/core/widgets/custom_loading_indicator.dart';
import 'package:untitled/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:untitled/features/home/presentation/manager/newest_books_cubit/newest_books_state.dart';

import 'best_seller_list_view_item.dart';
import 'book_rating_view.dart';
import 'custom_app_bar_view.dart';
import 'featured_books_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle16,
                ),
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBooksSuccess) {
          return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context,i) =>  Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: GestureDetector(
              onTap: () {
              GoRouter.of(context).push(AppRouter.kBookDetails, extra: state.books[i],);
              },
                child: BestSellerListViewItem(bookModel: state.books[i],)),
          ),
        );
        }
        if(state is NewestBooksFailure){
          return Text(state.failure);
        }else{
          return const CustomLoadingIndicator();
        }
      }
    );
  }
}







