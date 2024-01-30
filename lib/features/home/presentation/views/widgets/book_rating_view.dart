import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final String bookRating;
  const BookRating({Key? key, required this.mainAxisAlignment, required this.bookRating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
        const Icon(Icons.star, color: Color(0xffFFDD4F),),
        Text(bookRating, style: Styles.textStyle16,),
        const Text("(245)", style: Styles.textStyle14,)
      ],
    );
  }
}