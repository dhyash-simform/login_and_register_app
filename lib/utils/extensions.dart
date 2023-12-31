import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double heightFraction({double sizeFraction = 1}) =>
      MediaQuery.sizeOf(this).height * sizeFraction;

  double widthFraction({double sizeFraction = 1}) =>
      MediaQuery.sizeOf(this).width * sizeFraction;
}
