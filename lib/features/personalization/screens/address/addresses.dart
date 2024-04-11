import "package:ecommerceapp/common/widgets/appbar/appbar.dart";
import "package:ecommerceapp/features/personalization/screens/address/add_new_ddress.dart";
import "package:ecommerceapp/features/personalization/screens/address/widgets/single_address.dart";
import "package:ecommerceapp/utils/constants/colors.dart";
import "package:ecommerceapp/utils/constants/sizes.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";


class AddressesScreen extends StatelessWidget {
  const AddressesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){Get.to(() => const AddNewAddressScreen());},
        backgroundColor: TColors.primaryColor,
        elevation: 0,
        child: const Icon(Iconsax.add, color: TColors.white,),
      ),
      appBar: const TAppBar(
        title: Text('Addresses'),
        showBackArrow: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSingleAddress(selectedAddress: true,),
              TSingleAddress(selectedAddress: false,),
              TSingleAddress(selectedAddress: false,),
            ],
          ),
        ),
      ),
    );
  }
}
