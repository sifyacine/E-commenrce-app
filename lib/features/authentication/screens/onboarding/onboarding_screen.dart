import 'package:ecommerceapp/features/authentication/screens/onboarding/widgets/onboard_next_button.dart';
import 'package:ecommerceapp/features/authentication/screens/onboarding/widgets/onboarding_navigator.dart';
import 'package:ecommerceapp/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerceapp/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable pages
          PageView(
            children: const [
              OnBoardingPage(
                title: TTexts.onBoardingTitlel,
                subtitle: TTexts.onBoardingSubTitle1,
                name: TImages.onBoardingImage1,
              ),
              OnBoardingPage(
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
                name: TImages.onBoardingImage2,
              ),
              OnBoardingPage(
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
                name: TImages.onBoardingImage3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardNavigation(),

          /// circular button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}

