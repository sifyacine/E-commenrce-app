import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/custom_shapes/containers/rounded-container.dart';
import 'package:ecommerceapp/features/shop/screens/cart/widget/cart_item.dart';
import 'package:ecommerceapp/features/shop/screens/checkout/widgets/billing-address_section.dart';
import 'package:ecommerceapp/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ecommerceapp/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/cart/coupons_widget.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Order Reviews',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// items in cart
              const TCartItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// coupons TextField
              const TCouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Billing section
              TRoundedContainer(
                padding: const EdgeInsets.all(TSizes.sm),
                showBorder: true,
                backgroundColor: isDark ? TColors.kBlack : TColors.white,
                child: Column(
                  children: [
                    /// pricing
                    const TBillingAmountSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    /// divider
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    /// payment methods
                    TBillingPaymentSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),


                    /// address
                    TBillingAddressSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),
                  ],
                ),
              ),

              const SizedBox(height: TSizes.spaceBtwSections),

              /// checkout button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('checkout \$2500.00'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

