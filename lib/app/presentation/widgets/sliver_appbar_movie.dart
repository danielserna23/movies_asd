import 'package:flutter/material.dart';

import '../../config/utils/get_image_url.dart';
import '../../domain/models/movie/movie.dart';

class SliverAppBarMovie extends StatelessWidget {
  const SliverAppBarMovie({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 300,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          movie.title,
          style: const TextStyle(color: Colors.white),
        ),
        background: Stack(
          children: [
            SizedBox.expand(
              child: Image.network(
                getImageUrl(
                  movie.backdropPath,
                  imageQuality: ImageQuality.w500,
                ),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox.expand(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black,
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.white),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_outline),
        ),
      ],
    );
  }
}
