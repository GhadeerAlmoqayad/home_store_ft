import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_constants.dart';


class SecondElevated extends StatelessWidget {
  const SecondElevated({

    required this.text
    ,
    this.onPressed ,
    super.key,
  });
  final String text ;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return
      Container(
        decoration: BoxDecoration(
          
        borderRadius: BorderRadius.circular(25.r),
    gradient: LinearGradient(colors: [
    AppConstants.primaryGreenColor,
    AppConstants.secondaryGreenColor,
    ])),
      child :


      ElevatedButton(
      onPressed: onPressed,
      child: Text(
text,        style: GoogleFonts.cairo(
          fontSize: 14.sp,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(112.w, 29.h),
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.r)
        )
      ),
    ));
  }
}
