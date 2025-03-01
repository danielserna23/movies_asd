import '../../domain/repositories/media_repository.dart';
import '../../domain/typedefs.dart';
import '../services/remote/media_api.dart';

class MediaRepositoryImpl implements MediaRepository {
  final MediaApi _mediaApi;

  MediaRepositoryImpl(this._mediaApi);
  @override
  Future<ResultMedia> getMedia(int page) {
    return _mediaApi.getMedia(page);
  }

  @override
  Future<ResultMedia> searchMedia(String query, int page) {
    return _mediaApi.searchMedia(query, page);
  }
}
