
import 'package:ecommerceshop/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerceshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceshop/utils/constants/sizes.dart';
import 'package:ecommerceshop/utils/constants/text_strings.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            
            children: [
              Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

