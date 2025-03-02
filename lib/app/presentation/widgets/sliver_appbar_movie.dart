import 'package:flutter/material.dart';

import '../../config/utils/get_image_url.dart';
import '../../domain/models/movie/movie.dart';
import '../responsive/responsive.dart';

class SliverAppBarMovie extends StatelessWidget {
  const SliverAppBarMovie({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return SliverAppBar(
      expandedHeight: responsive.hp(responsive.isTablet ? 40 : 28),
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          movie.title,
          style: TextStyle(color: Colors.white, fontSize: responsive.dp(2)),
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
                      Colors.black12,
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
        size: responsive.dp(responsive.isTablet ? 3 : 2.5),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline),
          ),
        ),
      ],
    );
  }
}
