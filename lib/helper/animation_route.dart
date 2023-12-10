import 'package:flutter/material.dart';
import 'package:trips_app/pages/main_page.dart';

Route animationRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (
      BuildContext context,
      Animation<double> animaion,
      Animation<double> secondaryAnimation,
    ) => const MainPage(),
     transitionDuration: const Duration(milliseconds: 650), 
    transitionsBuilder: (
      context, 
      animaion,
      secondaryAnimation,
      child,
    ) => ScaleTransition(
      scale: Tween<double>(begin: 0.1, end: 1).animate(
        CurvedAnimation(
          parent: animaion, 
          curve: Curves.easeIn,
        ),
      ),
      child: child,
    ),
  );
}
