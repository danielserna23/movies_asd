import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../domain/models/media/media.dart';
import '../responsive/responsive.dart';
import 'poster_image_widget.dart';

class MediaItemWidget extends StatelessWidget {
  final Media media;
  final bool isHeroId;
  const MediaItemWidget({super.key, required this.media, this.isHeroId = true});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return FadeInUp(
      delay: const Duration(milliseconds: 500),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: GestureDetector(
          onTap: () => context.push('/movie/${media.id}'),
          child: Stack(
            children: [
              isHeroId
                  ? Hero(
                      tag: 'movie-image-${media.id}-${media.title}',
                      child: PosterImageWidget(
                        responsive: responsive,
                        media: media,
                      ),
                    )
                  : PosterImageWidget(
                      responsive: responsive,
                      media: media,
                    ),
              Positioned(
                child: Container(
                  height: responsive.hp(12),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black,
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: responsive.hp(1),
                left: responsive.wp(2),
                child: Container(
                  padding: EdgeInsets.all(responsive.hp(1)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white38,
                  ),
                  child: Icon(
                    Icons.movie,
                    size: responsive.hp(1.5),
                  ),
                ),
              ),
              Positioned(
                top: responsive.hp(1),
                right: responsive.hp(1),
                child: TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0, end: media.voteAverage / 10),
                  duration: const Duration(milliseconds: 2000),
                  builder: (context, value, child) {
                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          height: responsive.hp(3.4),
                          width: responsive.hp(3.4),
                          child: CircularProgressIndicator(
                            value: (value).clamp(0.0, 1.0),
                            strokeWidth: responsive.isTablet ? 7 : 4,
                            color: const Color(0xff48F2FB),
                          ),
                        ),
                        Text(
                          (value * 10).toStringAsFixed(1),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: responsive.dp(1.1),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
