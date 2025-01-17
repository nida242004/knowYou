import 'package:flutter/material.dart';
import 'package:breathescape/common/constants.dart';

class SectionIndicator extends StatelessWidget {
  const SectionIndicator({
    Key? key,
    this.opacity = 1.0,
  })  : assert(opacity >= 0.0 && opacity <= 1.0, 'Opacity must be between 0.0 and 1.0'),
        super(key: key);

  final double opacity;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        width: kSectionIndicatorWidth,
        height: 3.0,
        color: Colors.white.withOpacity(opacity),
      ),
    );
  }
}
