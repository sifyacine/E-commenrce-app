import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/images/circular_images.dart';
import 'package:ecommerceapp/common/widgets/texts/section_heading.dart';
import 'package:ecommerceapp/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// appbar
      appBar: const TAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      /// body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.user, width: 80, height: 80,),
                    TextButton(onPressed: (){}, child: const Text('change your profile picture'))
                  ],
                ),
              ),
              /// details
              const SizedBox(height: TSizes.spaceBtwItems / 2,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              /// heading profile info
              const TSectionHeading(title: "Profile Information"),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(onPressed: () {}, title: 'Name', value: 'Sif Yacine', ),
              TProfileMenu(onPressed: () {}, title: 'Username', value: 'Sif Yacine', ),

              const SizedBox(height: TSizes.spaceBtwItems / 2,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              ///heading personal info
              const TSectionHeading(title: "Personal information"),
              const SizedBox(height: TSizes.spaceBtwItems,),

              const TProfileMenu(icon: Iconsax.copy, title: 'User-ID', value: '45678', ),
              TProfileMenu(onPressed: () {}, title: 'E-mail', value: 'ycn585@gmail.com', ),
              TProfileMenu(onPressed: () {}, title: 'Phone Number', value: '+213 540883958', ),
              TProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male', ),
              TProfileMenu(onPressed: () {}, title: 'Date  Of Birth', value: '02 Jan, 2003', ),

              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              Center(
                child: TextButton(onPressed: (){} ,child: const Text('Close Account', style: TextStyle(color: Colors.redAccent),)),
              )


            ],
          ),
        )
        ),
    );
  }
}
