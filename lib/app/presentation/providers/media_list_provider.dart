import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/api_source/api_source_povider.dart';
import '../../data/repositories/media_repository_impl.dart';
import '../../data/services/remote/media_api.dart';
import '../../domain/failures/request_failure/request_failure.dart';
import '../../domain/repositories/media_repository.dart';
import '../../domain/result/result.dart';
import '../../domain/use_cases/media_use_case.dart';
import 'state/media_list_state.dart';

class MediaListNotifier extends StateNotifier<MediaListState> {
  final MediaUseCase _mediaUseCase;
  int _currentPage = 1;
  String _currentQuery = '';
  MediaListNotifier(this._mediaUseCase) : super(const MediaListState.initial());

  Future<void> fetchMedia() async {
    state = const MediaListState.loading();
    _currentPage = 1;
    _currentQuery = '';
    final result = await _mediaUseCase.getMedia(_currentPage);

    switch (result) {
      case Success(data: final mediaList):
        state = MediaListState.loaded(mediaList);
      case Failure(error: final failure):
        state = MediaListState.error(failure);
      default:
        state = MediaListState.error(RequestFailure.unknown());
    }
  }

  Future<void> searchMedia(String query) async {
    if (query.length >= 3) {
      _currentPage = 1;
      _currentQuery = query;
      state = const MediaListState.loading();
      final result = await _mediaUseCase.searchMedia(query, _currentPage);

      switch (result) {
        case Success(data: final mediaList):
          state = MediaListState.loaded(mediaList);
        case Failure(error: final failure):
          state = MediaListState.error(failure);
        default:
          state = MediaListState.error(RequestFailure.unknown());
      }
    } else if (query.isEmpty) {
      fetchMedia(); // Volver a mostrar todas las películas
    }
  }

  Future<void> loadMoreMedia() async {
    _currentPage++;
    final currentState = state;
    if (currentState is! MediaListStateLoaded) {
      state = const MediaListState.loading();
    }
    final result = _currentQuery.isNotEmpty
        ? await _mediaUseCase.searchMedia(_currentQuery, _currentPage)
        : await _mediaUseCase.getMedia(_currentPage);

    switch (result) {
      case Success(data: final mediaList):
        if (currentState is MediaListStateLoaded) {
          state = MediaListState.loaded([...currentState.media, ...mediaList]);
        } else {
          state = MediaListState.loaded(mediaList);
        }
      case Failure(error: final failure):
        state = MediaListState.error(failure);
      default:
        state = MediaListState.error(RequestFailure.unknown());
    }
  }
}

final mediaListProvider =
    StateNotifierProvider<MediaListNotifier, MediaListState>((ref) {
  final mediaUseCase = ref.read(mediaUseCaseProvider);
  final notifier = MediaListNotifier(mediaUseCase);
  notifier.fetchMedia();
  return notifier;
});

final mediaUseCaseProvider = Provider<MediaUseCase>((ref) {
  final movieService = ref.read(mediaRepositoryProvider);
  return MediaUseCase(movieService);
});

final mediaRepositoryProvider = Provider<MediaRepository>((ref) {
  final apiSource = ref.read(apiSourceProvider);
  return MediaRepositoryImpl(MediaApi(apiSource));
});

final isSearchingProvider = StateProvider<bool>((ref) => false);
