import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_constants.dart';
class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    required this.image,
    required this.title,
    required this.subTitle,

    super.key,
  });
  final String image;

  final String title;
  final String subTitle ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //,height: 291.12.h,width: 195.07.w,fit: BoxFit.fill,

        Expanded(
            child: Image(
                image: AssetImage(
                  'images/$image.png',
                ))),
        SizedBox(
          height: 93.h,
        ),
        Text(
          title,
          style: GoogleFonts.cairo(
            fontSize: 20.sp,
            color: AppConstants.selectedTextGreenColor,
          ),
        ),
        SizedBox(
          height: 35.h,
        ),
        Text(
          subTitle,
          style: GoogleFonts.cairo(
            fontSize: 16.sp,
            color: AppConstants.unselectedTextGreyColor,
          ),
        ),
        SizedBox(
          height: 68.h,
        ),

      ],
    );
  }
}
