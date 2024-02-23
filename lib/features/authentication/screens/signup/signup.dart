import 'package:flutter/material.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/constants/sizes.dart';
import 'package:modern_elegant_login_and_register_page_in_flutter/util/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Titel
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Form
              const TSignupForm(),
            ],
          ),
        ),
      ),
    );
  }
}

