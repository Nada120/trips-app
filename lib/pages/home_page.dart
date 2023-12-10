import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widgets/custom_activity_items.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_tab_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Discover',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: dark2,
            ),
          ),
        ),
        CustomTabBar(),
        Spacer(flex: 1),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Explore more',
                style: TextStyle(
                  fontSize: 20,
                  color: dark2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  fontSize: 15,
                  color: red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Spacer(flex: 1),
        CustomActivityItems(),
        Spacer(flex: 3),
      ],
    );
  }
}
