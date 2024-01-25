import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const BookRating({Key? key, required this.mainAxisAlignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(Icons.star, color: Color(0xffFFDD4F),),
        Text("4.8", style: Styles.textStyle16,),
        Text("(245)", style: Styles.textStyle14,)
      ],
    );
  }
}