import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating_view.dart';

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
                  image: const DecorationImage(fit: BoxFit.fill, image: AssetImage(AssetsData.testImage))),
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
                  child: const Text(
                    "Harry Potter",
                    style: Styles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 5,),
                const Text("J.K Rowling", style: Styles.textStyle14,),
                Row(
                  children: const [
                    Text("19.99 €", style: Styles.textStyle20,),
                    Spacer(),
                    BookRating(mainAxisAlignment: MainAxisAlignment.center,),
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
