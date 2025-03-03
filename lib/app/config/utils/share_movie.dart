import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../domain/models/movie/movie.dart';
import 'get_image_url.dart';

Future<void> shareMovieWithPoster(Movie movie) async {
  try {
    final response = await http.get(Uri.parse(getImageUrl(movie.posterPath)));
    if (response.statusCode != 200) {
      throw Exception('Error al descargar la imagen');
    }

    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/${movie.title}.jpg');
    await file.writeAsBytes(response.bodyBytes);

    final String message = '''
      ¡Mira esta película!
    Título: ${movie.title}
    URL: ${movie.homepage}
    ''';
    await Share.shareXFiles([XFile(file.path)], text: message);
  } catch (e) {
    throw Exception(e);
  }
}
