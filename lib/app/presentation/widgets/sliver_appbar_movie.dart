import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/utils/get_image_url.dart';
import '../../domain/models/movie/movie.dart';
import '../providers/favorites/is_favorite_provider.dart';
import '../responsive/responsive.dart';

class SliverAppBarMovie extends ConsumerWidget {
  const SliverAppBarMovie({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFavorite = ref.watch(isFavoriteProvider(movie.id));
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
            onPressed: () async {
              await ref
                  .read(isFavoriteProvider(movie.id).notifier)
                  .toggleFavorite(movie.toMedia());
            },
            icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_outline),
          ),
        ),
      ],
    );
  }
}
