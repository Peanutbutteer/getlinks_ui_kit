import 'dart:ui';

import 'package:flutter/material.dart';

class BlurImage extends StatelessWidget {
  const BlurImage({
    Key key,
    this.image,
    this.placeholder,
    this.blur = true,
  }) : super(key: key);

  final bool blur;
  final AssetImage placeholder;
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        FadeInImage(
          image: image,
          placeholder: placeholder,
          fit: BoxFit.cover,
        ),
        ClipRect(
          child: !blur
              ? Container()
              : BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 14.0, sigmaY: 14.0),
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
        ),
      ],
    );
  }
}
