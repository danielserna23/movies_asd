import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/failures/request_failure/request_failure.dart';
import '../../../domain/result/result.dart';
import '../../../domain/use_cases/media_use_case.dart';
import '../state/media_detail_state.dart';
import 'media_provider.dart';

class MediaDetailNotifier extends StateNotifier<MediaDetailState> {
  final MediaUseCase _mediaUseCase;
  MediaDetailNotifier(this._mediaUseCase)
      : super(const MediaDetailState.initial());

  Future<void> getMediaById(int mediaId) async {
    state = const MediaDetailState.loading();
    final result = await _mediaUseCase.getMediaById(mediaId);

    switch (result) {
      case Success(data: final movie):
        state = MediaDetailState.loaded(movie);
      case Failure(error: final failure):
        state = MediaDetailState.error(failure);
      default:
        state = MediaDetailState.error(RequestFailure.unknown());
    }
  }
}

final mediaDetailProvider =
    StateNotifierProvider.family<MediaDetailNotifier, MediaDetailState, int>(
  (ref, movieId) {
    final mediaUseCase = ref.read(mediaUseCaseProvider);
    final notifier = MediaDetailNotifier(mediaUseCase);
    notifier.getMediaById(movieId);
    return notifier;
  },
);
