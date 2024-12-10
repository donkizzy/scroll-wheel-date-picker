import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/theme_constants.dart';

class HightlightOverlay extends StatelessWidget {
  /// Creates a rounded rectangle background with the default [CupertinoContextMenu.kOpenBorderRadius] radius.
  const HightlightOverlay({
    super.key,
    required this.height,
    this.color,
    this.border,
  });

  /// Actual height of the [HightlightOverlay].
  final double height;

  /// Background color.
  final Color? color;

  /// Border color
  final BoxBorder? border ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: color ?? Colors.grey.withOpacity(defaultOpacity),
        border: border ,
        borderRadius: BorderRadius.circular(CupertinoContextMenu.kOpenBorderRadius),
      ),
    );
  }
}
