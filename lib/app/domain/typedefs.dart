import 'failures/request_failure/request_failure.dart';
import 'models/media/media.dart';
import 'result/result.dart';

typedef Json = Map<String, dynamic>;
typedef ResultMedia = Result<RequestFailure, List<Media>>;
