import 'package:flutter/material.dart';
import 'package:untitled/features/home/data/models/BookModel.dart';
import 'package:untitled/features/home/presentation/views/widgets/custom_book_image.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating_view.dart';

class BestSellerListViewItem extends StatelessWidget {
  final BookModel bookModel;
  const BestSellerListViewItem({Key? key, required this.bookModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          CustomBookImage(imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!),
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
                    bookModel.volumeInfo!.title!,
                    style: Styles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 5,),
                Text(bookModel.volumeInfo!.authors!.first, style: Styles.textStyle14,),
                Row(
                  children: [
                    const Text("Free", style: Styles.textStyle20,),
                    const Spacer(),
                    BookRating(mainAxisAlignment: MainAxisAlignment.center,
                      bookRating: bookModel.volumeInfo!.maturityRating!,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
