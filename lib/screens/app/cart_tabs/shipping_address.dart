import 'package:flutter/material.dart';
import 'package:home_store_ft/screens/app/back_ground_screen.dart';
import 'package:home_store_ft/widgets/custom_app_bar.dart';


class ShippingAddress extends StatefulWidget {
  const ShippingAddress({Key? key}) : super(key: key);

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return BackGroundScreen(appBar: CustomAppBar(title: "عنوان الشحن"), child: Column(
      
    ));
  }
}
