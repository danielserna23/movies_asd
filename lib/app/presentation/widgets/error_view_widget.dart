import 'package:animate_do/animate_do.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../responsive/responsive.dart';

class ErrorViewWidget extends StatelessWidget {
  const ErrorViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Pulse(
            child: SvgPicture.asset(
              'assets/images/error.svg',
              width: responsive.wp(20),
              height: responsive.hp(30),
            ),
          ),
          FadeInLeft(
            child: Text(
              'ERROR',
              style: TextStyle(
                fontSize: responsive.dp(3),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          FadeInRight(
            child: Text(
              'Something was wrong!',
              style: TextStyle(fontSize: responsive.dp(2)),
            ),
          ),
        ],
      ),
    );
  }
}
