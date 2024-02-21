import 'package:flutter/material.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/features/authentication/controllers_onboading/onboarding_controller.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/constants/colors.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/constants/sizes.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/device/device_utility.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dontNavigationClick,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? TColors.light : TColors.dark,
            dotHeight: 6.0),
      ),
    );
  }
}

