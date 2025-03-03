import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

import '../../config/routes/routes.dart';
import '../providers/media/media_list_provider.dart';
import '../providers/state/media_list_state.dart';
import '../responsive/responsive.dart';
import '../widgets/appbar_home_widget.dart';
import '../widgets/empty_view_widget.dart';
import '../widgets/error_view_widget.dart';
import '../widgets/media_item_widget.dart';

class HomeMoviesScreen extends ConsumerStatefulWidget {
  const HomeMoviesScreen({super.key});

  @override
  ConsumerState<HomeMoviesScreen> createState() => _HomeMoviesScreenState();
}

class _HomeMoviesScreenState extends ConsumerState<HomeMoviesScreen> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _searchController.addListener(_onSearchChanged);
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      ref.read(mediaListProvider.notifier).loadMoreMedia();
    }
  }

  void _onSearchChanged() {
    ref.read(mediaListProvider.notifier).searchMedia(_searchController.text);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.pixels + 200,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaListState = ref.watch(mediaListProvider);

    final responsive = Responsive.of(context);

    ref.listen<MediaListState>(
      mediaListProvider,
      (previous, current) {
        if (previous is MediaListStateLoaded &&
            current is MediaListStateLoaded &&
            current.media.length > previous.media.length) {
          _scrollToTop();
        }
      },
    );

    return Scaffold(
      appBar: AppbarHomeWidget(
        responsive: responsive,
        searchController: _searchController,
      ),
      body: switch (mediaListState) {
        MediaListStateInitial() => const Center(child: Text('Inicial')),
        MediaListStateLoading() =>
          const Center(child: CircularProgressIndicator()),
        MediaListStateLoaded(media: final media) => media.isEmpty
            ? const EmptyViewWidget()
            : MasonryGridView.count(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                controller: _scrollController,
                itemCount: media.length,
                crossAxisCount: responsive.isTablet ? 3 : 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                itemBuilder: (context, index) {
                  if (index == 1) {
                    return Column(
                      children: [
                        const SizedBox(height: 30),
                        MediaItemWidget(media: media[index]),
                      ],
                    );
                  }
                  return MediaItemWidget(media: media[index]);
                },
              ),
        MediaListStateError(failure: final _) => const ErrorViewWidget(),
        _ => const ErrorViewWidget(),
      },
      floatingActionButton: !responsive.isTablet
          ? FloatingActionButton(
              shape: const CircleBorder(),
              onPressed: () => context.pushNamed(Routes.favorites),
              child: const Icon(Icons.favorite),
            )
          : FloatingActionButton.large(
              shape: const CircleBorder(),
              onPressed: () => context.pushNamed(Routes.favorites),
              child: const Icon(Icons.favorite),
            ),
    );
  }
}
