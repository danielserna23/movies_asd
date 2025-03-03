import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/failures/request_failure/request_failure.dart';
import '../../../domain/models/performer/performer.dart';

part 'performer_list_state.freezed.dart';

@freezed
class PerformerListState with _$PerformerListState {
  const factory PerformerListState.initial() = PerformerListStateInitial;
  const factory PerformerListState.loading() = PerformerListStateLoading;
  const factory PerformerListState.loaded(List<Performer> performers) =
      PerformerListStateLoaded;
  const factory PerformerListState.error(RequestFailure failure) =
      PerformerListStateError;
}
