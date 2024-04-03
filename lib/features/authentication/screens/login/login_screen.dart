import 'package:ecommerceapp/common/styles/spacing_styles.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/text_strings.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                      isDark ? TImages.darkAppLogo : TImages.lightAppLogo,
                    ),
                  ),
                  Text(
                    TTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: TSizes.sm,
                  ),
                  Text(
                    TTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              /// Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections,),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: TTexts.email,
                        ),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwInputFields,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.eye_slash),
                          labelText: TTexts.password,
                        ),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwInputFields / 2,
                      ),

                      /// remember me and forget password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// remember me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(TTexts.rememberMe),
                            ],
                          ),

                          /// forget password
                          TextButton(
                            onPressed: () {},
                            child: const Text(TTexts.forgetPassword),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: TSizes.spaceBtwSections,
                      ),

                      /// Sign in button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            TTexts.signIn,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      /// create account button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            TTexts.createAccount,
                          ),
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections,),
                    ],
                  ),
                ),
              ),
              /// Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(child: Divider(color: isDark ? TColors.kDarkGrey : TColors.kGrey, thickness: 0.6, indent: 5, endIndent: 20,)),
                  Text(TTexts.orSignInWith.toUpperCase(), style: Theme.of(context).textTheme.labelMedium,),
                  Flexible(child: Divider(color: isDark ? TColors.kDarkGrey : TColors.kGrey, thickness: 0.6, indent: 20, endIndent: 5,)),
                ],
              ),
              SizedBox(height: TSizes.spaceBtwSections,),

              /// footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: TColors.kGrey), borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: (){

                      },
                      icon: const Image(
                        width: TSizes.icond,
                        height: TSizes.icond,
                        image: AssetImage(
                          TImages.google,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems,),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: TColors.kGrey), borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: (){

                      },
                      icon: const Image(
                        width: TSizes.icond,
                        height: TSizes.icond,
                        image: AssetImage(
                          TImages.facebook,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
