import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../responsive/responsive.dart';

class EmptyViewWidget extends StatelessWidget {
  const EmptyViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Center(
      child: Column(
        children: [
          Pulse(
            child: SvgPicture.asset(
              'assets/images/empty_ligth.svg',
              width: responsive.wp(20),
              height: responsive.hp(30),
            ),
          ),
          FadeInLeft(
            child: Text(
              'EMPTY',
              style: TextStyle(
                fontSize: responsive.dp(3),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          FadeInRight(
            child: Text(
              'No movie found!',
              style: TextStyle(fontSize: responsive.dp(2)),
            ),
          ),
        ],
      ),
    );
  }
}
