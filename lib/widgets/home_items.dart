import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_constants.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
                width: 147.w,
                height: 186.h,

                child: Image(image: AssetImage('images/imag22.png'))),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.favorite)),
            Positioned(
              bottom: 10.h,
              left: 19.h,
              child: Container(
                clipBehavior: Clip.antiAlias,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Icon(Icons.star,color: Colors.white,size: 15)
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
              ),
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

      ],
    );
  }
}
