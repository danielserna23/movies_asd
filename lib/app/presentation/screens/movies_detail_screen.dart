import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/utils/get_image_url.dart';
import '../../domain/models/movie/movie.dart';
import '../providers/media_detail_provider.dart';
import '../providers/state/media_detail_state.dart';
import '../widgets/sliver_appbar_movie.dart';

class MoviesDetailScreen extends ConsumerWidget {
  final int mediaId;
  const MoviesDetailScreen({super.key, required this.mediaId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieState = ref.watch(mediaDetailProvider(mediaId));
    return Scaffold(
      body: switch (movieState) {
        MediaDetailStateLoading() =>
          const Center(child: CircularProgressIndicator()),
        MediaDetailStateLoaded(movie: final movie) =>
          Center(child: _MovieDetailView(movie)),
        MediaDetailStateError() =>
          const Center(child: CircularProgressIndicator()),
        _ => const Center(
            child: Text('Error'),
          ),
      },
    );
  }
}

class _MovieDetailView extends ConsumerWidget {
  final Movie movie;

  const _MovieDetailView(this.movie);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        SliverAppBarMovie(movie: movie),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 1,
            (context, _) => Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Row(
                    spacing: 20,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          height: 180,
                          getImageUrl(
                            movie.posterPath,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          movie.overview,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Wrap(
                    children: [
                      ...movie.genres.map(
                        (genre) => Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: Chip(
                            label: Text(genre.name),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
