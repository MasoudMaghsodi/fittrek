import 'package:fittrek/constants/strings/color-string.dart';
import 'package:fittrek/constants/strings/image-string.dart';
import 'package:fittrek/controller/onboarding-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            reverse: true,
            children: [
              OnBoardingPage(
                image: ImageString.onBoardingImage1,
                title: 'Wellcome to FitTrek',
              ),
              OnBoardingPage(
                image: ImageString.onBoardingImage2,
                title: '',
              ),
              OnBoardingPage(
                image: ImageString.onBoardingImage3,
                title: '',
              ),
            ],
          ),
          OnBoardingSkip(),
          OnBoardingDotNavigation(),
          OnBoardingButton()
        ],
      ),
    );
  }
}

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20.0,
      right: 20.0,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        child: Text(
          'Next',
          style: TextStyle(
            fontSize: 16.0,
            color: ColorString.primaryColor2,
          ),
        ),
      ),
    );
  }
}

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      bottom: 35.0,
      left: MediaQuery.of(context).size.width / 2.5,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            dotHeight: 6,
            dotColor: ColorString.primaryColor2,
            activeDotColor: ColorString.primaryColor1,
            dotWidth: 10.0),
      ),
    );
  }
}

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15.0,
      left: 15.0,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: Text(
          'Skip',
          style: TextStyle(
            fontSize: 16.0,
            color: ColorString.primaryColor2,
          ),
        ),
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
  });

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(image),
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.8),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 100,
          left: MediaQuery.of(context).size.width / 3,
          child: Text(
            title,
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
