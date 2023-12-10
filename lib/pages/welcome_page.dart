import 'package:flutter/material.dart';
import 'main_page.dart';
import '../widgets/welcome_page_dots.dart';
import '../constants/images_paths.dart';
import '../constants/welcome_text.dart';
import '../helper/animation_route.dart';
import '../widgets/welcome_page_body.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int indexPage = 0;
  PageController? pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: largeText.length,
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                indexPage = index;
              });
            },
            itemBuilder: (_, index) => WelcomePageBody(
              imagePath: welcomeImagesPaths[index],
              largText: largeText[index],
              middleText: middleText[index],
              detailsText: detailsText[index],
              onPressed: () {
                if (index == largeText.length-1) {
                  Navigator.push(
                    context,
                    animationRoute(const MainPage()),
                  );
                } 
                setState(() {
                  pageController?.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                });
              },
            ),
          ),
          Positioned(
            right: 20,
            top: 80,
            child: WelcomePageDots(indexPage),
          ),
        ],
      ),
    );
  }
}
