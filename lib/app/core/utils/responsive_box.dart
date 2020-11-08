import 'package:flutter/material.dart';
//import 'package:meta/meta.dart';

class ResponsiveBox extends Flexible {
  const ResponsiveBox({
    @required Widget child,
    int flex = 1,
    FlexFit fit = FlexFit.tight,
  }) : super(
          child: child,
          fit: fit,
          flex: flex,
        );
}
