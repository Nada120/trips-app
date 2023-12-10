import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'custom_button.dart';

class WelcomePageBody extends StatelessWidget {
  final String imagePath;
  final String largText;
  final String middleText;
  final String detailsText;
  final void Function() onPressed;
  
  const WelcomePageBody({
    super.key,
    required this.imagePath,
    required this.largText,
    required this.middleText,
    required this.detailsText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imagePath),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 20,
          right: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  largText,
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: dark2,
                  ),
                ),
                Text(
                  middleText,
                  style: const TextStyle(
                    fontSize: 40,
                    color: dark1,
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: Text(
                    detailsText,
                    style: const TextStyle(
                      fontSize: 15,
                      color: dark3,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  onPressed: onPressed,
                  icon: Icons.navigate_next_sharp,
                  label: 'NEXT',
                ),
              ],
            ),
           
          ],
        ),
      ),
    );
  }
}
