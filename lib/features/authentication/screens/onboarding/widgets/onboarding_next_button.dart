import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/features/authentication/controllers_onboading/onboarding_controller.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/constants/colors.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/constants/sizes.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/device/device_utility.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? TColors.primary : Colors.black,
          ),
          child: const Icon(
            Iconsax.arrow_right_3,
          )),
    );
  }
}
