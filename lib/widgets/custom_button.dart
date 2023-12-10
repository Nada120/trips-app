import 'package:flutter/material.dart';
import '../constants/colors.dart';

class CustomButton extends StatelessWidget {
  final void Function() onPressed;
  final double width;
  final IconData icon;
  final String label;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.width = 140,
    this.label = '',
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        maximumSize: Size(width, 40),
        backgroundColor: dark2,
        elevation: 3,
      ),
      onPressed: onPressed,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: const TextStyle(
                color: white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              icon,
              size: 36,
              color: white,
            ),
          ],
        ),
      ),
    );
  }
}
