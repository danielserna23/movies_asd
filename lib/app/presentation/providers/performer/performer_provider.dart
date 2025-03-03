import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/api_source/api_source_povider.dart';
import '../../../data/repositories/performer_repository_impl.dart';
import '../../../data/services/remote/performer_api.dart';
import '../../../domain/repositories/performer_repository.dart';
import '../../../domain/use_cases/performer_use_case.dart';

final performerUseCaseProvider = Provider<PerformerUseCase>((ref) {
  final performerRepository = ref.watch(performerRepositoryProvider);
  return PerformerUseCase(performerRepository);
});

final performerRepositoryProvider = Provider<PerformerRepository>((ref) {
  final apiSource = ref.watch(apiSourceProvider);
  return PerformerRepositoryImpl(PerformerApi(apiSource));
});
