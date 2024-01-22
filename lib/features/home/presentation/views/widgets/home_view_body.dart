import 'package:flutter/material.dart';
import 'package:untitled/core/utils/assets.dart';
import 'package:untitled/core/utils/styles.dart';

import 'featured_books_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle16,
          ),
          SizedBox(height: 20,),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}


class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                  image: DecorationImage(fit: BoxFit.fill, image: AssetImage(AssetsData.testImage))),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    "Harry Potter",
                    style: Styles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 5,),
                Text("J.K Rowling", style: Styles.textStyle14,),
                Row(
                  children: [
                    Text("19.99 €", style: Styles.textStyle20,),
                    Spacer(),
                    BookRating(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Color(0xffFFDD4F),),
        Text("4.8", style: Styles.textStyle16,),
        Text("(245)", style: Styles.textStyle14,)
      ],
    );
  }
}


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                size: 24,
              )),
        ],
      ),
    );
  }
}

