import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

import '../services/local/enviroment.dart';
import 'api_source.dart';

final apiSource = ApiSource(
  client: Client(),
  baseUrl: 'https://api.themoviedb.org/3',
  apiKey: Environment.theMovieDbKey,
);

final apiSourceProvider = Provider<ApiSource>((ref) => apiSource);
