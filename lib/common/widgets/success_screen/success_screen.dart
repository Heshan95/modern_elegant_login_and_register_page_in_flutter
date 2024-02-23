import 'package:flutter/material.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/common/styles/spacing_style.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/constants/sizes.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/constants/text_strings.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.titel, required this.subtitel, required this.onPressed});

  final String image, titel, subtitel;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              // Image
              Image(
                image: AssetImage(image),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Titel and subtitel
              Text(
                titel,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                subtitel,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: onPressed,
                    child: const Text(TTexts.tContinue)),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
