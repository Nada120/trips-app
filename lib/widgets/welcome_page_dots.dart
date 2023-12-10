import 'package:flutter/material.dart';
import '../constants/colors.dart';

class WelcomePageDots extends StatelessWidget {
  final int indexPage;
  const WelcomePageDots(this.indexPage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(3, (indexDots) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeIn,
          width: 8,
          height: indexPage == indexDots ? 25 : 15,
          margin: const EdgeInsets.only(bottom: 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: indexPage == indexDots 
              ? dark2 
              : dark2.withOpacity(0.5),
          ),
        );
      }),
    );
  }
}
