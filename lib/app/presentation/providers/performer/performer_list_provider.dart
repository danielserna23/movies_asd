import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/failures/request_failure/request_failure.dart';
import '../../../domain/result/result.dart';
import '../../../domain/use_cases/performer_use_case.dart';
import '../state/performer_list_state.dart';
import 'performer_provider.dart';

class PerformerListNotifier extends StateNotifier<PerformerListState> {
  final PerformerUseCase _performerUseCase;

  PerformerListNotifier(this._performerUseCase)
      : super(const PerformerListState.initial());

  Future<void> fetchPerformer(int movieId) async {
    state = const PerformerListState.loading();

    final result = await _performerUseCase.getCastByMovie(movieId);

    switch (result) {
      case Success(data: final performerList):
        state = PerformerListState.loaded(performerList);
      case Failure(error: final failure):
        state = PerformerListState.error(failure);
      default:
        state = PerformerListState.error(RequestFailure.unknown());
    }
  }
}

final performerListProvider = StateNotifierProvider.family<
    PerformerListNotifier, PerformerListState, int>((ref, mediId) {
  final mediaUseCase = ref.read(performerUseCaseProvider);
  final notifier = PerformerListNotifier(mediaUseCase);
  notifier.fetchPerformer(mediId);
  return notifier;
});
