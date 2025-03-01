import '../repositories/media_repository.dart';
import '../typedefs.dart';

class MediaUseCase {
  final MediaRepository _mediaRepository;

  MediaUseCase(this._mediaRepository);

  Future<ResultMedia> getMedia(int page) async =>
      _mediaRepository.getMedia(page);
  Future<ResultMedia> searchMedia(String query, int page) async =>
      _mediaRepository.searchMedia(query, page);
}
