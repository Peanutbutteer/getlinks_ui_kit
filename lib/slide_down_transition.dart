import 'package:flutter/material.dart';

class SlideDownTransition extends PageRouteBuilder<Widget> {
  SlideDownTransition(this.widget)
      : super(pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secoundaryAnimation) {
          return widget;
        }, transitionsBuilder: (BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: Offset.zero,
              end: const Offset(0.0, -1.0),
            ).animate(animation),
            child: child,
          );
        });

  final Widget widget;
}
