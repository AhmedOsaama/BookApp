import 'package:flutter/material.dart';
import 'package:untitled/features/home/presentation/views/widgets/similar_books_section.dart';

import 'book_details_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: const [
                    CustomBookDetailsAppBar(),
                    BookDetailsSection(),
                    SizedBox(
                      height: 50,
                    ),
                    SimilarBooksSection(),
                    SizedBox(height: 40,),
                  ],
                ),
              ),
            )
          ],
      ),
    );
  }
}


