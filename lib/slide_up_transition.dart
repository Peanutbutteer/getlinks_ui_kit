import 'package:flutter/material.dart';

class SlideUpTransition extends PageRouteBuilder<Widget> {
  SlideUpTransition(this.widget)
      : super(pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secoundaryAnimation) {
          return widget;
        }, transitionsBuilder: (BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.0, 1.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        });

  final Widget widget;
}
