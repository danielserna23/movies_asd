import '../typedefs.dart';

abstract class MediaRepository {
  Future<ResultMedia> getMedia(int page);
  Future<ResultMedia> searchMedia(String query, int page);
}
