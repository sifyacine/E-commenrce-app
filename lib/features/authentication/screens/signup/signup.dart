import 'package:ecommerceapp/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerceapp/common/widgets/login_signup/socail_buttons.dart';
import 'package:ecommerceapp/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// form
              const SignUpForm(),
              const SizedBox(height: TSizes.spaceBtwSections),
              /// divider
              TFormDivider(dividerText: TTexts.orSignUpWith.toUpperCase()),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// social buttons
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

