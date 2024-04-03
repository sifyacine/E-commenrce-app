import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';


class TLoginForm extends StatelessWidget {
  const TLoginForm({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
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
    );
  }
}
