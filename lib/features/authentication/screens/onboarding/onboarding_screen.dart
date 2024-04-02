import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/text_strings.dart';
import 'package:ecommerceapp/utils/device/device_utility.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
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
            children: [
              OnBoardingPage(title: TTexts.onBoardingTitlel, subtitle: TTexts.onBoardingSubTitle1, name: TImages.onBoardingImage1,),
              OnBoardingPage(title: TTexts.onBoardingTitle2, subtitle: TTexts.onBoardingSubTitle2, name: TImages.onBoardingImage2,),
              OnBoardingPage(title: TTexts.onBoardingTitle3, subtitle: TTexts.onBoardingSubTitle3, name: TImages.onBoardingImage3,),
            ],
          ),

          /// Skip Button
          OnBoardingSkip(),
          
          /// Dot Navigation SmoothPageIndicator

          /// circular button
        ],
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
    return Positioned(top: TDeviceUtils.getAppBarHeight(), right:TSizes.defaultSpace ,child: TextButton(onPressed: (){}, child: const Text('skip'),));
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.name, required this.title, required this.subtitle,
  });

  final String name, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: THelperFunctions.screenWidth() * 0.8,
            height: THelperFunctions.screenHeight() * 0.6,
            image: AssetImage(name),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
