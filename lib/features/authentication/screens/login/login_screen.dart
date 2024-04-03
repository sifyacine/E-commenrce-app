import 'package:ecommerceapp/common/styles/spacing_styles.dart';
import 'package:ecommerceapp/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerceapp/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/text_strings.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/socail_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// logo, title and subtitle
              const TLoginHeader(),

              /// Form
              const TLoginForm(),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignInWith,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}