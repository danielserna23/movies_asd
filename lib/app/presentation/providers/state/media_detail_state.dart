import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/failures/request_failure/request_failure.dart';
import '../../../domain/models/movie/movie.dart';

part 'media_detail_state.freezed.dart';

@freezed
class MediaDetailState with _$MediaDetailState {
  const factory MediaDetailState.initial() = MediaDetailStateInitial;
  const factory MediaDetailState.loading() = MediaDetailStateLoading;
  const factory MediaDetailState.loaded(Movie movie) = MediaDetailStateLoaded;
  const factory MediaDetailState.error(RequestFailure failure) =
      MediaDetailStateError;
}
