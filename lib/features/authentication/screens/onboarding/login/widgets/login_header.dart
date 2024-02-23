import 'package:flutter/material.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/constants/image_strings.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/constants/sizes.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/constants/text_strings.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/helpers/helper_functions.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 100.0,
          image: AssetImage(dark ? TImages.darkAppLogo : TImages.lightAppLog),
        ),
        Text(TTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: TSizes.sm),
        Text(TTexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
