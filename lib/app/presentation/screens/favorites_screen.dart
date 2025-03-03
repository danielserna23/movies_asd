import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../providers/favorites/favorites_list_provider.dart';
import '../providers/state/media_list_state.dart';
import '../responsive/responsive.dart';
import '../widgets/empty_view_widget.dart';
import '../widgets/error_view_widget.dart';
import '../widgets/media_item_widget.dart';

class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaListState = ref.watch(favoritesListProvider);
    final responsive = Responsive.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: responsive.hp(5),
        iconTheme: IconThemeData(size: responsive.dp(2), color: Colors.white),
        title: Text(
          'Favorites',
          style: TextStyle(fontSize: responsive.dp(2)),
        ),
        centerTitle: true,
      ),
      body: switch (mediaListState) {
        MediaListStateInitial() => const Center(child: Text('Inicial')),
        MediaListStateLoading() =>
          const Center(child: CircularProgressIndicator()),
        MediaListStateLoaded(media: final media) => media.isEmpty
            ? const EmptyViewWidget()
            : MasonryGridView.count(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                itemCount: media.length,
                crossAxisCount: responsive.isTablet ? 3 : 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                itemBuilder: (context, index) {
                  if (index == 1) {
                    return Column(
                      children: [
                        const SizedBox(height: 30),
                        MediaItemWidget(
                          media: media[index],
                          isHeroId: false,
                        ),
                      ],
                    );
                  }
                  return MediaItemWidget(
                    media: media[index],
                    isHeroId: false,
                  );
                },
              ),
        MediaListStateError(failure: final _) => const ErrorViewWidget(),
        _ => const ErrorViewWidget(),
      },
    );
  }
}
