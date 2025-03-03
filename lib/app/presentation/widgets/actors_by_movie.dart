import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/theme/colors.dart';
import '../../config/utils/get_image_url.dart';
import '../providers/performer/performer_list_provider.dart';
import '../providers/state/performer_list_state.dart';
import '../responsive/responsive.dart';

class ActorsByMovie extends ConsumerWidget {
  final int movieId;
  const ActorsByMovie({super.key, required this.movieId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final performerListState = ref.watch(performerListProvider(movieId));
    final responsive = Responsive.of(context);
    return switch (performerListState) {
      PerformerListStateInitial() => const Center(child: Text('Inicial')),
      PerformerListStateLoading() =>
        const Center(child: CircularProgressIndicator()),
      PerformerListStateLoaded(performers: final performers) => performers
              .isEmpty
          ? SizedBox(
              height: responsive.dp(30),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.all(responsive.hp(1)),
                  width: responsive.wp(responsive.isTablet ? 25 : 30),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          color: Colors.white,
                          child: Image.asset(
                            'assets/images/silueta.png',
                            color: AppColors.dark,
                            height:
                                responsive.hp(responsive.isTablet ? 20 : 18),
                            width: responsive.wp(responsive.isTablet ? 18 : 40),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Unknown',
                        maxLines: 2,
                        style: TextStyle(fontSize: responsive.dp(1)),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : SizedBox(
              height: responsive.dp(30),
              child: ListView.builder(
                padding: EdgeInsets.all(responsive.wp(2)),
                scrollDirection: Axis.horizontal,
                itemCount: performers.length,
                itemBuilder: (context, index) {
                  final actor = performers[index];
                  return Container(
                    padding: EdgeInsets.all(responsive.hp(1)),
                    width: responsive.wp(responsive.isTablet ? 25 : 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            getImageUrl(actor.profilePath),
                            height:
                                responsive.hp(responsive.isTablet ? 20 : 18),
                            width: responsive.wp(responsive.isTablet ? 18 : 40),
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          actor.name,
                          maxLines: 2,
                          style: TextStyle(fontSize: responsive.dp(1)),
                        ),
                        Text(
                          actor.character ?? '',
                          maxLines: 2,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
      PerformerListStateError(failure: final failure) =>
        Center(child: Text('Error: ${failure.runtimeType}')),
      _ => const Center(
          child: Text('Error'),
        ),
    };
  }
}
