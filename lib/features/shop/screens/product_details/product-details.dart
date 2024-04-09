import 'package:ecommerceapp/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter/material.dart';


class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// product image slider
            TCurvedEdgeWidget(
              child: Container(

              ),
            )



            /// products details
          ],
        ),
      ),
    );
  }
}
