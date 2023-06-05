import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/screens/app/back_ground_screen.dart';
import 'package:home_store_ft/utils/app_constants.dart';
import 'package:home_store_ft/widgets/custom_app_bar.dart';

import '../../widgets/favorite_products_items.dart';
import '../../widgets/second_elevated_button.dart';

class FavoriteProducts extends StatefulWidget {
  const FavoriteProducts({Key? key}) : super(key: key);

  @override
  State<FavoriteProducts> createState() => _FavoriteProductsState();
}

class _FavoriteProductsState extends State<FavoriteProducts> {
  @override
  Widget build(BuildContext context) {
    return BackGroundScreen(
        appBar: CustomAppBar(
          title: 'منتجاتي المفضلة',
          leadingIcon: Icons.arrow_back_ios,
          onPressedLeading:(){ Navigator.pop(context);},
        ),
        child: GridView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 9,
              mainAxisSpacing: 14,
              childAspectRatio: 166.w / 304.h,
            ),
            itemBuilder: (context, index) {
              return FavoriteProductsItem();
            }));
  }
}

