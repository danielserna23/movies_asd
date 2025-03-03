import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/api_source/api_source_povider.dart';
import '../../../data/repositories/media_repository_impl.dart';
import '../../../data/services/remote/media_api.dart';
import '../../../domain/repositories/media_repository.dart';
import '../../../domain/use_cases/media_use_case.dart';

final mediaUseCaseProvider = Provider<MediaUseCase>((ref) {
  final movieService = ref.watch(mediaRepositoryProvider);
  return MediaUseCase(movieService);
});

final mediaRepositoryProvider = Provider<MediaRepository>((ref) {
  final apiSource = ref.watch(apiSourceProvider);
  return MediaRepositoryImpl(MediaApi(apiSource));
});

final isSearchingProvider = StateProvider<bool>((ref) => false);
