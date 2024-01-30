import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';


class CustomBookImage extends StatelessWidget {
  final String imageUrl;
  const CustomBookImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: CachedNetworkImage(
        fit: BoxFit.fill,
        imageUrl: imageUrl,
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
