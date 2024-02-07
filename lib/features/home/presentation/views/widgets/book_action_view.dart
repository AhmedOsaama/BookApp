import 'package:flutter/material.dart';
import 'package:untitled/features/home/data/models/BookModel.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  final BookModel bookModel;
  const BooksAction({super.key, required this.bookModel});

  // final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
              child: CustomButton(
                text: 'Free',
                backgroundColor: Colors.white,
                textColor: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              )),
          if(bookModel.volumeInfo?.previewLink != null)
          Expanded(
              child: CustomButton(
                onPressed: () async {
                   var url = Uri.parse(bookModel.volumeInfo?.previewLink! ?? "");
                   if(await canLaunchUrl(url)){
                     await launchUrl(url);
                   }else{
                     throw "Couldn't launch $url";
                   }
                },
                fontSize: 16,
                text: "19.99",
                backgroundColor: const Color(0xffEF8262),
                textColor: Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              )),
        ],
      ),
    );
  }

  // String getText(BookModel bookModel) {
  //   if (bookModel.volumeInfo.previewLink == null) {
  //     return 'Not Avaliable';
  //   } else {
  //     return 'Preview';
  //   }
  // }
}
