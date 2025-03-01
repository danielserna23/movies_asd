import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/failures/request_failure/request_failure.dart';
import '../../../domain/models/media/media.dart';

part 'media_list_state.freezed.dart';

@freezed
class MediaListState with _$MediaListState {
  const factory MediaListState.initial() = MediaListStateInitial;
  const factory MediaListState.loading() = MediaListStateLoading;
  const factory MediaListState.loaded(List<Media> media) = MediaListStateLoaded;
  const factory MediaListState.error(RequestFailure failure) =
      MediaListStateError;
}
