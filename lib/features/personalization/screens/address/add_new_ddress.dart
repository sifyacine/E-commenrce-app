import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Add new address'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                /// name
                TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),

                /// phone number
                TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    prefixIcon: Icon(Iconsax.mobile),
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),

                /// street and postal code
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                          labelText: 'street',
                          prefixIcon: Icon(Iconsax.home_hashtag),
                        ),
                      ),
                    ),
                    const SizedBox(width: TSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                          labelText: 'Postal Code',
                          prefixIcon: Icon(Iconsax.code),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),

                /// city and state
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                          labelText: 'City',
                          prefixIcon: Icon(Iconsax.building),
                        ),
                      ),
                    ),
                    const SizedBox(width: TSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                          labelText: 'State',
                          prefixIcon: Icon(Iconsax.activity),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwInputFields),

                /// country
                TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: 'Country',
                    prefixIcon: Icon(Iconsax.global),
                  ),
                ),


                /// saving the address button
                const SizedBox(height: TSizes.spaceBtwSections),
                // Add space here
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text(
                      'Save',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
