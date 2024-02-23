import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/common/styles/spacing_style.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/common/widgets/login_signup/form_divider.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/common/widgets/login_signup/social_button.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/features/authentication/screens/onboarding/login/widgets/login_form.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/features/authentication/screens/onboarding/login/widgets/login_header.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/constants/sizes.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, titels and subtitles
              const TLoginHeader(),

              //Form
              const TLoginForm(),

              //Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwItems),

              //Footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
