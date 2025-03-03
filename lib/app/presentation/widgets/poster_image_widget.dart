import 'package:flutter/material.dart';

import '../../config/utils/get_image_url.dart';
import '../../domain/models/media/media.dart';
import '../responsive/responsive.dart';

class PosterImageWidget extends StatelessWidget {
  const PosterImageWidget({
    super.key,
    required this.responsive,
    required this.media,
  });

  final Responsive responsive;
  final Media media;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        height: responsive.hp(responsive.isTablet ? 34 : 28),
        getImageUrl(
          media.posterPath,
          imageQuality:
              responsive.isTablet ? ImageQuality.w500 : ImageQuality.w300,
        ),
        fit: BoxFit.cover,
      ),
    );
  }
}
