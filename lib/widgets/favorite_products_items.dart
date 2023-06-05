import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_store_ft/widgets/rate_item.dart';
import 'package:home_store_ft/widgets/second_elevated_button.dart';

import '../utils/app_constants.dart';
import 'cart_add_remove_button.dart';


class FavoriteProductsItem extends StatelessWidget {
  const FavoriteProductsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(
            color: AppConstants.cardBorder,
          ),
          borderRadius: BorderRadius.circular(27.r)),
      child: Column(
        children: [
          Stack(
            children: [
              Image(image: AssetImage('images/imag22.png')),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.favorite)),
              Positioned(
                bottom: 10.h,
                left: 19.h,
                child: RateItem(),
              )
            ],
          ),

          Text(
            'اسم المنتج ',
            style: GoogleFonts.cairo(
                color: AppConstants.secondaryLightTextGreyColor,
                fontSize: 14.sp),
          ),
          Text(
            'السعر',
            style: GoogleFonts.cairo(
                color: AppConstants.secondaryLightTextGreyColor,
                fontSize: 14.sp),
          ),
          SecondElevated(text: "أضف للسلة",),
          // child: ElevatedButton(
          //   onPressed: () {},
          //   child: Text(
          //     "أضف للسلة",
          //     style: GoogleFonts.cairo(fontSize: 14.sp),
          //   ),
          //   style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.transparent,
          //       elevation: 0,
          //       minimumSize: Size(112.w, 29.h),
          //       shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(15.r))),
          // ),

        ],
      ),
    );
  }
}

