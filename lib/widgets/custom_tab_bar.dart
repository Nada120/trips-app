import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'list_view_images.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: TabBar(
            tabAlignment: TabAlignment.start,
            labelColor: dark2,
            controller: tabController,
            unselectedLabelColor: dark2.withOpacity(0.4),
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
            dividerColor: Colors.transparent,
            indicatorColor: red,
            isScrollable: true,
            labelPadding: const EdgeInsets.only(left: 0, right: 15),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: const [
              Tab(text: 'Places'),
              Tab(text: 'Inspiration'),
              Tab(text: 'Emotions'),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Container(
          height: 300,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left: 20),
          child: TabBarView(
            controller: tabController,
            children: const [
              ListViewImages(),
              ListViewImages(),
              ListViewImages(),
            ]
          ),
        )
      ],
    );
  }
}
