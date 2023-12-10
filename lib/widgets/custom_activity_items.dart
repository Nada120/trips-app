import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/images_paths.dart';

class CustomActivityItems extends StatelessWidget {
  const CustomActivityItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          showImageActivity(
            activity[0]['image']!,
            activity[0]['name']!,
          ),
          const Spacer(),
          showImageActivity(
            activity[1]['image']!,
            activity[1]['name']!,
          ),
          const Spacer(),
          showImageActivity(
            activity[2]['image']!,
            activity[2]['name']!,
          ),
        ],
      ),
    );
  }

  Widget showImageActivity(String imagePath, String title) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 50,
          width: 50,
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imagePath),
            ),
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: dark2,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
