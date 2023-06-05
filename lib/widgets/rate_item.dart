import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_constants.dart';


class RateItem extends StatelessWidget {
  const RateItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      child: Row(
        mainAxisSize: MainAxisSize.min, // Added this line

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlig nment.center,
        children: [

          Icon(Icons.star,color: Colors.white,size: 18)
          ,
          Text('4.1',style: GoogleFonts.cairo(
            color: Colors.white,
            fontSize: 14.sp,

          ),),
        ],
      ),
      width: 51.w,
      height: 19.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          gradient: LinearGradient(colors: [
            AppConstants.primaryGreenColor,
            AppConstants.secondaryGreenColor,
          ])

      ),
    );
  }
}
