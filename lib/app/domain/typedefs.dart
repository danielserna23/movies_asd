import 'failures/request_failure/request_failure.dart';
import 'models/media/media.dart';
import 'models/movie/movie.dart';
import 'result/result.dart';

typedef Json = Map<String, dynamic>;
typedef ResultMedia = Result<RequestFailure, List<Media>>;
typedef ResultMovie = Result<RequestFailure, Movie>;
