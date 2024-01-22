import 'package:flutter/material.dart';

import 'featured_list_item.dart';
import 'home_view_body.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,i) => const FeaturedListViewItem(),
      ),
    );
  }
}