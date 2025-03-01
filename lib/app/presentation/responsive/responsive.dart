import 'dart:math' as math;

import 'package:flutter/material.dart';

class Responsive {
  late double _width, _height, _diagonal;
  late bool _isTablet;
  Responsive(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    _width = size.width;
    _height = size.height;
    _diagonal = math.sqrt(math.pow(_width, 2) + math.pow(_height, 2));
    _isTablet = size.shortestSide >= 600;
  }

  static Responsive of(BuildContext context) => Responsive(context);

  double get width => _width;
  double get height => _height;
  double get diagonal => _diagonal;
  bool get isTablet => _isTablet;

  double wp(double percent) => _width * percent / 100;
  double hp(double percent) => _height * percent / 100;
  double dp(double percent) => _diagonal * percent / 100;
}
